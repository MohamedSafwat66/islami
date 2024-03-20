import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami/lists/listView.dart';
import 'package:islami/provider/provider.dart';
class searchscreen extends StatelessWidget {
  const searchscreen({Key? key}) : super(key: key);

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
                      :Expanded(child: listview(data: Provider.of<providerscreen>(context).searchData))
                ],
              ),
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
                      :Expanded(child: listview(data: Provider.of<providerscreen>(context).searchData))
                ],
              ),
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
                      :Expanded(child: listview(data: Provider.of<providerscreen>(context).searchData))
                ],
              ),
              Column(
                children: [
                  Provider.of<providerscreen>(context).loadingSearch==true?
                  const Center(child:  CircularProgressIndicator(),)
                      :Expanded(child: listview(data: Provider.of<providerscreen>(context).searchData))
                ],
              ),
              
            ],
          ),
        )
      ),
    );
  }
}
