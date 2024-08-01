import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String image;

  BookCard({required this.title, required this.author, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
      child: Column(
      children: [
        Image.asset(image,
        height: 300,
         width: 250,
        fit: BoxFit.cover),
        SizedBox(height: 8,),
        Text(title,style: TextStyle(fontWeight: FontWeight.bold)),
        Text(author),
        ],
      ),
      ),
    );
  }
}
