import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;

  SectionTitle({required this.title, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,),
        Text('see more',style: TextStyle(color:Color(0xFF4838D1)),),
      ],
    );
  }
}
