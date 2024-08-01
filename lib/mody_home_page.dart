import 'package:c11_exam_sun_online/mood_feature.dart';
import 'package:c11_exam_sun_online/mood_icon.dart';
import 'package:c11_exam_sun_online/mood_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodyHomePage extends StatefulWidget {
  static const String routeName = "moodyhome";
  const MoodyHomePage({Key? key}) : super(key: key);

  @override
  State<MoodyHomePage> createState() => _MoodyHomePageState();
}

class _MoodyHomePageState extends State<MoodyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/logo2.png",
            height: 30,
            alignment: Alignment.topLeft,),
          Text("Moody",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 24),textAlign: TextAlign.left,),

         Spacer(),
          Image.asset("assets/images/bell-02.png",
            height: 40,
            alignment: Alignment.topRight,
          ),
        ],
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/Frame.png",
            width: 326,
            height: 30,),
            SizedBox(height: 10,),
            Text("How are you feeling to day?",
            style:TextStyle(
              fontWeight:FontWeight.w400,
              fontSize: 16
            ) ,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MoodIcon(icon:Icons.favorite,lable: 'Love'),
                MoodIcon(icon:Icons.emoji_emotions,lable: 'Cool'),
                MoodIcon(icon:Icons.tag_faces,lable: 'Happy'),
                MoodIcon(icon:Icons.sentiment_dissatisfied,lable: 'Sad'),
              ],
            ),
            SizedBox(height: 20,),
            MoodFeature(),
            SizedBox(height: 20,),
            MoodSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}


