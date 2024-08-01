import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodFeature extends StatelessWidget {
  const MoodFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Feature",
              style:GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ) ,
            ),
            Text('see more',style: TextStyle(color:Colors.green))
          ],
        ),
        SizedBox(height: 20,),
        Image.asset("assets/images/Frame24.png",alignment: Alignment.center,),

      ],
    );
  }
}
