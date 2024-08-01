import 'package:c11_exam_sun_online/book_card.dart';
import 'package:c11_exam_sun_online/category_chip.dart';
import 'package:c11_exam_sun_online/section_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  //static const String routeName = "home";
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/Logo.png",
            height: 30,
            alignment: Alignment.topLeft,),
            Image.asset("assets/images/AudiBooks.png",
            height: 40,
           alignment: Alignment.centerLeft, ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Color(0xFF4838D1),),)
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black

                      )
                  ),
                 TextButton(onPressed: (){}, child: Text("see more",style:TextStyle (color: Color(0xFF4838D1)))),
                ],
              ),

              SizedBox(height: 8,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryChip(label: 'Art',),
                    CategoryChip(label: 'Business',),
                    CategoryChip(label: 'Comedy',),
                    CategoryChip(label: 'Drama',),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SectionTitle(
               title:'Recommended For You',
              textStyle:GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500


                )
              )),
              SizedBox(height: 8.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookCard(
                      title: "The Silence",
                      author: "Mark Alpert",
                      image: "assets/images/book2.png",

                    ),
                    BookCard(
                      title: "The Speaker",
                      author: "Traci Chee",
                      image: "assets/images/book1.png",

                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              SectionTitle(title: "Best Seller"),
              SizedBox(height: 8,),
              BookCard(title: "Light Mage",
                  author: "Laurie Forest",
                  image: "assets/images/book3.png"),

            ],
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "Library"),
        ],
      ),
    );
  }
}