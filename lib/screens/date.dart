import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/screens/search.dart';
import 'package:jhijri/_src/_jHijri.dart';

class dateTimescreen extends StatelessWidget {
  List monthesName = ["يناير","فبراير","مارس","ابريل","مايو","يونيو","يوليو","أغسطس","سبتمبر","أكتوبر","نوفمبر","ديسمبر",];
  Map HijriEvents = {
    "راس السنة الهجرية": ["1 محرم ${JHijri().year}","منذ 10 ايام"],
    "عاشوراء": ["10 محرم ${JHijri().year}","منذ 10 ايام"],
    "المولد النبوي الشريف": ["12 ربيع الأول${JHijri().year}","منذ 10 ايام"],
    "الأسراء والمعراج": ["27 رجب ${JHijri().year}","منذ 10 ايام"],
    "ليلة النصف من شعبان": ["14 شعبان ${JHijri().year}","منذ 10 ايام"],
    "بداية شهر رمضان": ["1 رمضان ${JHijri().year}","منذ 10 ايام"],
    "عيد الفطر": ["1 شوال ${JHijri().year}","منذ 10 ايام"],
    "يوم عرفة": ["9 ذي الحجة ${JHijri().year}","منذ 10 ايام"],
    "عيد الأضحى": ["10 ذي الحجة ${JHijri().year}","منذ 10 ايام"],
  };
  Map Events = {
    "عيد الميلاد المجيد": ["7 يناير ${JHijri().year}","منذ 10 ايام"],
    "ثورة ٢٥ يناير وعيد الشرطة": ["25 يناير ${JHijri().year}","منذ 10 ايام"],
    "عيد تحرير سيناء": ["25 أبريل${JHijri().year}","منذ 10 ايام"],
    "عيد العمال": ["1 مايو ${JHijri().year}","منذ 10 ايام"],
    "عيد شم النسيم": ["6 مايو ${JHijri().year}","منذ 10 ايام"],
    "ثورة 30 يونيو": ["30 يونيو ${JHijri().year}","منذ 10 ايام"],
    "عيد ثورة 23 يوليو": ["23 يوليو ${JHijri().year}","منذ 10 ايام"],
    "عيد القوات المسلحة": ["6 أكتوبر ${JHijri().year}","منذ 10 ايام"]
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
                    "التقويم",
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, fontFamily: "Inter"),
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
                onPressed: () {},
                backgroundColor: Color(0xFF007777),
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
              FloatingActionButton.small(
                shape: CircleBorder(),
                heroTag: "search",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Directionality(
                        textDirection: TextDirection.rtl,
                        child: searchscreen());
                  }));
                },
                backgroundColor: Color(0xFF007777),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              FloatingActionButton.small(
                shape: CircleBorder(),
                heroTag: "notification",
                onPressed: () {},
                backgroundColor: Color(0xFF007777),
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Color(0xFFCD6504),
              indicatorSize: TabBarIndicatorSize.tab,
              overlayColor: MaterialStatePropertyAll(Colors.black12),
              tabs: [
                Tab(
                  text: 'الهجري',
                ),
                Tab(
                  text: 'الميلادي',
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                            ),
                          ]),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Color(0xFF055757),
                                    )),
                              ),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  JHijri.now().monthName +
                                      " ${JHijri.now().year}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF055757),
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFF055757),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "الأحد",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الأثنين",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الثلاثاء",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الأربعاء",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الخميس",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الجمعة",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "السبت",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: Color(0xFF055757),
                          thickness: 2,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'الأعياد الأسلامية',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          color: Color(0xFF055757),
                          thickness: 2,
                        )),
                      ],
                    ),
                    Flexible(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: BulletedList(
                                            listItems: [
                                              Text(
                                                HijriEvents.keys.elementAt(index),
                                                style: TextStyle(fontSize: 16),
                                              )
                                            ],
                                            listOrder: ListOrder.ordered,
                                            bulletColor: Color(0xFF055757),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(right: 45),
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              HijriEvents.values.elementAt(index)[0],
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    HijriEvents.values.elementAt(index)[1],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ))
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 1,
                            );
                          },
                          itemCount: HijriEvents.length),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                            ),
                          ]),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Color(0xFF055757),
                                    )),
                              ),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  monthesName[DateTime.now().month-1] +
                                      " ${DateTime.now().year}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF055757),
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFF055757),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "الأحد",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الأثنين",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الثلاثاء",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الأربعاء",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الخميس",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "الجمعة",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "السبت",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                              color: Color(0xFF055757),
                              thickness: 2,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'الأعياد القبطية والأجازات الرسمية',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                              color: Color(0xFF055757),
                              thickness: 2,
                            )),
                      ],
                    ),
                    Flexible(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(right: 8.0),
                                          child: BulletedList(
                                            listItems: [
                                              Text(
                                                Events.keys.elementAt(index),
                                                style: TextStyle(fontSize: 16),
                                              )
                                            ],
                                            listOrder: ListOrder.ordered,
                                            bulletColor: Color(0xFF055757),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(right: 45),
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              Events.values.elementAt(index)[0],
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                        Events.values.elementAt(index)[1],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ))
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 1,
                            );
                          },
                          itemCount: Events.length),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}