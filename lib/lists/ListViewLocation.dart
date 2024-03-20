import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listviewLocation extends StatelessWidget {
  listviewLocation(this.data);
  Map data = {};
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){

              },
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(data.values.elementAt(index)[0]),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.keys.elementAt(index)??'',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,),
                        Text(data.values.elementAt(index)[1]??'',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(data.values.elementAt(index)[2]??'',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,),
                  ),
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
