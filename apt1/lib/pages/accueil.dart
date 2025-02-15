import 'package:flutter/material.dart';
//import 'package:apt1/pages/details.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: AcceuilPage(),
  ));
}

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});

  @override
  State<AcceuilPage> createState() {
    return AcceuilPageStates();
  }
}

class AcceuilPageStates extends State<AcceuilPage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);

    return Scaffold(
      body:  Center(
      child: Text("acceuil"),
      ),
    );
  }
}
