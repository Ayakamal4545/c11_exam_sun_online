import 'package:flutter/material.dart';

class MoodIcon extends StatelessWidget {
 final  String lable;
  final IconData icon;
 const  MoodIcon({required this.lable,required this.icon});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 40,),
        SizedBox(height: 5,),
        Text(lable),
      ],
    );
  }
}
