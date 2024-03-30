import 'package:flutter/material.dart';
import 'package:islami/lists/peopleListView.dart';
import 'package:islami/lists/postsListView.dart';
import 'package:islami/lists/qoranListView.dart';
import 'package:islami/lists/reels.dart';
import 'package:islami/lists/videosListView.dart';
import 'package:provider/provider.dart';
import 'package:islami/lists/listView.dart';
import 'package:islami/provider/provider.dart';
import 'package:video_player/video_player.dart';

class searchscreen extends StatelessWidget {
  searchscreen({Key? key}) : super(key: key);
  Map qoran= {
  "هُوَ الَّذِي يُصَلِّي عَلَيْكُمْ وَمَلَائِكَتُهُ لِيُخْرِجَكُم مِّنَ الظُّلُمَاتِ إِلَى النُّورِ وَكَانَ بِالْمُؤْمِنِينَ رَحِيمًا......":["سورة البقرة", "الآية رقم 154"],
  "هُوَ الَّذِي يُصَلِّي عَلَيْكُمْ وَمَلَائِكَتُهُ لِيُخْرِجَكُم.....":["سورة النور", "الآية رقم 154"]
  };
 Map hades = {
  "من كان يؤمن بالله واليوم الآخر ،فليقل خيرا أو ليصمت ، ومن كان يؤمن بالله واليوم الآخر ، فليكرم جاره ، ومن كان يؤمن بالله واليوم الآخر ، فليكرم ضيفه":["صحيح البخاري", "كتاب الإيمان, باب دعاؤكم إيمانكم"],
   "من كان يؤمن بالله واليوم الآخر ،فليقل خيرا أو ليصمت ، ومن كان يؤمن بالله واليوم الآخر ، فليكرم جاره ، ومن كان يؤمن بالله واليوم الآخر ، فليكرم ضيفه":["صحيح البخاري", "كتاب الإيمان, باب دعاؤكم إيمانكم"],
  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){

          },),
          centerTitle: true,
          automaticallyImplyLeading: true,
          toolbarHeight: 100,
          elevation: 0,
          title:  Container(
            height: 50,
            child: TextFormField(
              autofocus: true,
              onChanged: (value){
                Provider.of<providerscreen>(context,listen: false).search(keyword: value);
              },
              decoration: InputDecoration(
                hintText: 'بحث',
                filled: true,
                fillColor: Color(0xFFEFEFEF),
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Color(0xFFCD6504),
            indicatorSize: TabBarIndicatorSize.tab,
            overlayColor: MaterialStatePropertyAll(Colors.black12),
            isScrollable: true,
            tabs: [
              Tab(text:'الكل',),
              Tab(text:'الأشخاص',),
              Tab(text:'المنشورات',),
              Tab(text:'فيديوهات',),
              Tab(text:'ريلز',),
              Tab(text:'قرآن',),
              Tab(text:'حديث',),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: listview(data: Provider.of<providerscreen>(context).searchData))
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: peopleListview())
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: postsListview())
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: videosListview())
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: reels())
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: qoranListview(data: qoran,))
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: qoranListview(data: hades,))
                ],
              ),
              
            ],
          ),
        )
      ),
    );
  }
}
