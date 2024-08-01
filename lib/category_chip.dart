import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;

  CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
          label: Text(label),
        ),
    );
  }
}
