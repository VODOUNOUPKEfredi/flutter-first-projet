import 'package:flutter/material.dart';
//import 'package:apt1/pages/details.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: DetailsPage(),
  ));
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() {
    return DetailsPageStates();
  }
}

class DetailsPageStates extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);

    return Scaffold(
      body:  Center(
      child: Text("details"),
      ),
    );
  }
}
