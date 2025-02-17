import 'package:apt1/pages/accueil.dart';
import 'package:apt1/pages/bookmark.dart';
import 'package:apt1/pages/details.dart';
import 'package:apt1/pages/profil.dart';
import 'package:apt1/pages/search.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        circleColor: Colors.blue,
        activeIcons: const [
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.bookmark, color: Colors.deepPurple),
          Icon(Icons.add, color: Colors.deepPurple),
          Icon(Icons.bookmark, color: Colors.deepPurple),
          Icon(Icons.person, color: Colors.deepPurple),
          
        ],
        inactiveIcons: const [
          Text("Home",style: TextStyle(fontSize: 10),),
          Text("bookmark",style: TextStyle(fontSize: 10),),
          Text("Details",style: TextStyle(fontSize: 10),),
          Text("Search",style: TextStyle(fontSize: 10),),
          Text("Profil",style: TextStyle(fontSize: 10),),
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepPurple,
        elevation: 10,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          AcceuilPage(
            ),
           BookmarkPage(
            ),
             DetailsPage(
            ),
             ProfilPage(
            ),
             SearchPage(
            ),
           
            
        ],
      ),
    );
  }
}