import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class videosListview extends StatefulWidget {
  @override
  State<videosListview> createState() => _videosListviewState();
}

class _videosListviewState extends State<videosListview> {
  Map data = {
    "أحمد سلامة": [
      "منذ ساعة",
      "assets/images/profile.jpg",
      "+ متابعة",
      "القرآن الكريم هو المصدر الأول للتشريع في الدين الإسلامي تليةالسنة النبوية المطهرة وهذا بإتفاق العلماء  المعاصرين منهم والمتأخرين ",
      1685,
      18,
      31,
      130,
      false,
      "assets/images/1.mp4"
    ],
    "محمد علاء": [
      "الأمس",
      "assets/images/profile.jpg",
      "+ متابع",
      "القرآن الكريم هو المصدر الأول للتشريع في الدين الإسلامي تليةالسنة النبوية المطهرة وهذا بإتفاق العلماء  المعاصرين منهم والمتأخرين ",
      2056,
      30,
      48,
      180,
      false,
      "assets/images/1.mp4"
    ]
  };
  late VideoPlayerController _videocontroller;
  @override
  void initState(){
    super.initState();
    _videocontroller = VideoPlayerController.asset(
        data.values.elementAt(0)[9]
    )..initialize().then(
        (_){
          _videocontroller.play();
          setState(() {

          });
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(data.values.elementAt(index)[1]),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.keys.elementAt(index) ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data.values.elementAt(index)[0] ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_vert)),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text(data.values.elementAt(index)[3])),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 100),
                        child: Text("${data.values.elementAt(index)[4]}")),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child:
                        Text("${data.values.elementAt(index)[5]} تعليقا ")),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child:
                        Text("${data.values.elementAt(index)[6]} مشاركة ")),
                    Text("${data.values.elementAt(index)[7]} "),
                    Icon(Icons.bar_chart)
                  ],
                ),
                _videocontroller.value.isInitialized?
                AspectRatio(
                    aspectRatio: _videocontroller.value.aspectRatio,
                    child: VideoPlayer(
                        _videocontroller
                    ),
                )
                :Container(),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          data.values.elementAt(index)[8] = !data.values.elementAt(index)[8];
                          if(data.values.elementAt(index)[8]){
                            data.values.elementAt(index)[4]++;
                          }
                          else{
                            data.values.elementAt(index)[4]--;
                          }
                          setState(() {});
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                shadows: [
                                  Shadow(color: Colors.black,blurRadius: 2)
                                ],
                                color: data.values.elementAt(index)[8] ? Colors.red : Colors.white,
                              ),
                              Text("أحببتة"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.insert_comment_outlined,

                            ),
                            Text("تعليق"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.reply,

                            ),
                            Text("مشاركة"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.share,

                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 1,
          );
        },
        itemCount: data.length);
  }
}
