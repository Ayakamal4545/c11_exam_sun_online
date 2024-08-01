import 'package:flutter/material.dart';

class ExerciseButton extends StatelessWidget {
  final String lable1;

  ExerciseButton({required this.lable1});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (onPressed: (){},
        child: Text(lable1),
    );
  }
}
