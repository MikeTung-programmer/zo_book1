import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zo_book/Screens/ZoLaPage.dart';
import 'package:zo_book/Screens/Home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'/Home',
    routes: {
      '/Home': (context)=>Inn(),
      '/ZoLaPage': (context)=>LaPage(),
    },
  ));
}
