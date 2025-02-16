import 'package:flutter/material.dart';
//import 'package:apt1/pages/ajout.dart';




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
    return AjoutPageStates();
  }
}

class AjoutPageStates extends State<BookmarkPage> {
 
 final List<Map<String, dynamic>> images = [
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
    {"image": "images1/1.png"},
 ];
  
 @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);
 double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:  Container(
        height: screenHeight*1,
        child: Padding(
        padding: EdgeInsets.all(6),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
        ),
         itemCount: images.length,
        itemBuilder :(context,index){
return Card(
  elevation:5,
  child: Center(
    child: Image.asset(images[index]['image'],
    fit: BoxFit.cover,)
   
  )
  ,);
        }),
      
      ),
      )
    );
  }
}
