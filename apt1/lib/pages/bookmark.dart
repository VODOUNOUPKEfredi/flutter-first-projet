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
  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);

    return Scaffold(
      body:  Center(
      child: Text("bookmark"),
      ),
    );
  }
}
