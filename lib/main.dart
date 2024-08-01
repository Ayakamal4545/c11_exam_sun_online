import 'package:c11_exam_sun_online/home.dart';
import 'package:c11_exam_sun_online/mody_home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
  // debugShowCheckedModeBanner: false,

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // routes: {
       // Home.routeName:(context)=>MoodyHomePage(),
     // },

        home: Home(),
    );
  }

}