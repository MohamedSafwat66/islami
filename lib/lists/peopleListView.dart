import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class peopleListview extends StatefulWidget {
  @override
  State<peopleListview> createState() => _peopleListviewState();
}

class _peopleListviewState extends State<peopleListview> {
  Map data = {
    "أحمد سلامة":["@ahmedSalama", "assets/images/profile.jpg", "+ متابعة"],
    "محمد علاء":["@mohamedAlaa", "assets/images/profile.jpg", "+ متابع"]
  };

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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(data.values.elementAt(index)[1]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.keys.elementAt(index)??'',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,),
                        Text(data.values.elementAt(index)[0]??'',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            data.values.elementAt(index)[2] == "+ متابعة"?Color(0xFF055757):Colors.white
                        )
                      ),
                      onPressed: (){
                        setState(() {

                        });
                        if(data.values.elementAt(index)[2] == "+ متابع"){
                          data.values.elementAt(index)[2] = "+ متابعة";
                        }
                        else{
                          data.values.elementAt(index)[2] = "+ متابع";
                        }
                      },
                      child: Text(data.values.elementAt(index)[2]??'',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          color:
                          data.values.elementAt(index)[2] == "+ متابع"?Color(0xFF055757):Colors.white
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,),
                    ),
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
