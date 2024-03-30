import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class qoranListview extends StatelessWidget{
  qoranListview({Key? key,required this.data}) : super(key: key);
  Map data;

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width:0.5
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.keys.elementAt(index)),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Expanded(child: Text(data.values.elementAt(index)[0])),
                      Expanded(child: Text(data.values.elementAt(index)[1], textAlign: TextAlign.left,)),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder:(context,index){
          return Divider(
            thickness: 1,
          );
        },
        itemCount:data.length
    );
  }
}
