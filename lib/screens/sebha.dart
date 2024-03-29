import 'dart:math';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class sebhaScreen extends StatefulWidget {
  @override
  State<sebhaScreen> createState() => _sebhaScreenState();
}

class _sebhaScreenState extends State<sebhaScreen> {
  String name = "أحمد سلامة";
  int total_count = 0;
  int count = 0;
  int tasbe7 = 0;
  Map tasbe7at = {
    "سُبْحَانَ اللَّهِ": 33,
    "الْحَمْدُ لِلَّهِ": 33,
    "الْلَّهُ أَكْبَرُ ": 33,
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ":
        1
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF055757),
      appBar: AppBar(
        backgroundColor: Color(0xFF055757),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {
                  Share.share(
                      "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
                },
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          width: 140,
                          height: 40,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Color(0xFF007979)),
                          child: Text(
                            name,
                            // textAlign: TextAlign.center,
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
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Color(0xFF007979)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "اليوم",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "Inter"),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Color(0xFF055757),
                            width: 20,
                          ),
                          Expanded(
                            child: Image.asset("assets/images/rosary.png"),
                          ),
                          Expanded(
                            child: Text(
                              "$total_count",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17 - log((total_count==0)?1:total_count),
                                  fontFamily: "Inter"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Swiper(
              onIndexChanged: (index){
                count = 0;
                tasbe7 = index;
              },
              itemBuilder: (BuildContext context,int index){
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      color: Color(0xFF007979),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text(
                    tasbe7at.keys.elementAt(index),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter"),

                  ),
                );
              },
              viewportFraction: 150,
              itemCount: tasbe7at.length,
              layout: SwiperLayout.TINDER,
              itemWidth: double.infinity,
              itemHeight: double.infinity,
            ),
          ),
          Expanded(
            flex: 4,
            child: InkWell(
              onTap: () {
                if (tasbe7at.values.elementAt(tasbe7) - 1 > count) {
                  count++;
                  total_count++;
                } else {
                  count = 0;
                  if (tasbe7at.length - 1 > tasbe7) {
                    tasbe7++;
                  } else {
                    tasbe7 = 0;
                  }
                }
                setState(() {});
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width / 2,
                    width: MediaQuery.of(context).size.width / 2,
                    child: CircularProgressIndicator(
                      value: count / tasbe7at.values.elementAt(tasbe7),
                      strokeWidth: 12,
                      backgroundColor: Colors.greenAccent,
                      color: Color(0xFF088F8F),
                    ),
                  ),
                  Text(
                    "${tasbe7at.values.elementAt(tasbe7)} / $count",
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, fontFamily: "Inter"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      heroTag: "sound",
                      onPressed: () {},
                      backgroundColor: Color(0xFF007777),
                      child: Icon(
                        Icons.multitrack_audio_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      heroTag: "edit",
                      onPressed: () {},
                      backgroundColor: Color(0xFF007777),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
