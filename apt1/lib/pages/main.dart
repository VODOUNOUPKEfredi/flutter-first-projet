import 'package:apt1/pages/details.dart';
import 'package:flutter/material.dart';
//import 'package:apt1/pages/main.dart';
import 'package:apt1/pages/home1.dart';
import 'package:apt1/pages/ajout.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage> {
  final pages = [
    HomePage(),
    AjoutPage(),
    DetailsPage(),
   // Home1page(),
  ];
  int indexpage = 0;

  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);

    return Scaffold(
      body: pages[indexpage],
      bottomNavigationBar: NavigationBar(
          selectedIndex: indexpage,
          onDestinationSelected: (int index) {
            setState(() {
              indexpage = index;
            });
          },
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: ""),
            NavigationDestination(icon: Icon(Icons.search), label: ""),
            NavigationDestination(icon: Icon(Icons.add), label: ""),
            NavigationDestination(icon: Icon(Icons.bookmark), label: ""),
            NavigationDestination(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
