import 'package:flutter/material.dart';
//import 'package:apt1/pages/ajout.dart';




void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: SearchPage(),
  ));
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() {
    return AjoutPageStates();
  }
}

class AjoutPageStates extends State<SearchPage> {
 
 
 @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);

    return Scaffold(
      body: Center(
      child: Text("search"),
      ),
    );
  }
}
