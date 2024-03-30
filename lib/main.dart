import 'package:flutter/material.dart';
import 'package:islami/screens/date.dart';
import 'package:islami/screens/location.dart';
import 'package:islami/screens/search.dart';
import 'package:islami/screens/sebha.dart';
import 'package:provider/provider.dart';
import 'package:islami/provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (context){
        return providerscreen();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
          textDirection: TextDirection.rtl,
          child: searchscreen()
      ),
    );
  }

}