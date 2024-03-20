import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  listview({Key? key,required this.data}) : super(key: key);
  List data;
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(itemBuilder:(context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){

          },
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(data[index]['title']??'',
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
        }, itemCount:data.length);
  }
}
