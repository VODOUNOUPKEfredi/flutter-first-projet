import 'package:flutter/material.dart';
//import 'package:apt1/pages/bookmark.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: BookmarkPage(),
  ));
}

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() {
    return DetailsPageStates();
  }
}

class DetailsPageStates extends State<BookmarkPage> {
  
 final List<Map<String, dynamic>> images = [
    {"image": "https://img.freepik.com/free-photo/brazilian-man-having-guarana-drink-outdoors_23-2150765674.jpg?ga=GA1.1.1512817245.1739357619"},
     {"image": "https://img.freepik.com/free-photo/brazilian-man-having-guarana-drink-outdoors_23-2150765674.jpg?ga=GA1.1.1512817245.1739357619"},
      {"image": "https://img.freepik.com/free-photo/brazilian-man-having-guarana-drink-outdoors_23-2150765674.jpg?ga=GA1.1.1512817245.1739357619"},
       {"image": "https://img.freepik.com/free-photo/brazilian-man-having-guarana-drink-outdoors_23-2150765674.jpg?ga=GA1.1.1512817245.1739357619"}
  ];
  int indeximage = 0;
 @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);
 //double screenWidth = MediaQuery.of(context).size.width;
 //   double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
              
              ),
              child: 
              ListView(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Choco Macaron", style: TextStyle(color: Colors.black)),
                          Text("By Rachelle")
                        ],
                      )
                    ],
                    
                  )
                ],
              ),
            )
          ],

          
        ),
      ),
    );
  }
  }

