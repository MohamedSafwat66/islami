import 'package:flutter/material.dart';
import 'package:islami/lists/ListViewLocation.dart';
import 'package:islami/screens/search.dart';
class locationscreen extends StatelessWidget {
  Map eating = {
    "مطعم الأشقاء": ["assets/images/dish.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "مطعم الأشقاء1": ["assets/images/dish.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "مطعم الأشقاء2": ["assets/images/dish.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "مطعم الأشقاء3": ["assets/images/dish.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "4مطعم الأشقاء": ["assets/images/dish.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
  };
  Map mosque = {
    "مسجد الصالحين": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "مسجد الصالحين1": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "مسجد الصالحين2": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "3مسجد الصالحين": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "4مسجد الصالحين": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "5مسجد الصالحين": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"],
    "مسجد الصالحين6": ["assets/images/mosque.png", "Al Sharqiah, Diarb Negm, zagazig,main Roiad", "5KM"]
  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            title: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: 160,
                  height: 40,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Color(0xFF007979)),
                  child: Text(
                    "المجاورة",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter"),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Color(0xFF007979)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset("assets/images/profile.jpg"),
                ),
              ],
            ),
            actions: [
              FloatingActionButton.small(
                shape: CircleBorder(),
                heroTag: "share",
                onPressed: (){

                },
                backgroundColor: Color(0xFF007777),
                child: Icon(Icons.send,color: Colors.white,),
              ),
              FloatingActionButton.small(
                shape: CircleBorder(),
                heroTag: "search",
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return Directionality(
                            textDirection: TextDirection.rtl,
                            child: searchscreen()
                        );
                      })
                  );
                },
                backgroundColor: Color(0xFF007777),
                child: Icon(Icons.search,color: Colors.white,),
              ),
              FloatingActionButton.small(
                shape: CircleBorder(),
                heroTag: "notification",
                onPressed: (){

                },
                backgroundColor: Color(0xFF007777),
                child: Icon(Icons.notifications_none,color: Colors.white,),
              ),

            ],
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Color(0xFFCD6504),
              indicatorSize: TabBarIndicatorSize.tab,
              overlayColor: MaterialStatePropertyAll(Colors.black12),
              tabs: [
                Tab(text:'مطاعم حلال',),
                Tab(text:'مساجد',),
              ],
            ),
          ),

          body: SafeArea(
            child: TabBarView(
              children: [
                listviewLocation(eating),
                listviewLocation(mosque),
              ],
            ),
          )
      ),
    );
  }
}
