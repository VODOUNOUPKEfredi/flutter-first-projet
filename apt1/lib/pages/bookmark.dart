import 'package:flutter/material.dart';
//import 'package:apt1/pages/ajout.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BookmarkPage(),
    ),
  );
}

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() {
    return AjoutPageStates();
  }
}

class AjoutPageStates extends State<BookmarkPage> {
  bool showAll = false;

  final List<Map<String, dynamic>> images = [
    {"image": "images1/3.png"},
    {"image": "images1/4.png"},
    {"image": "images1/3.png"},
    {"image": "images1/4.png"},
    {"image": "images1/3.png"},
    {"image": "images1/4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> displayedImages =
        showAll ? images : images.take(3).toList();
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //elevation: 12,
        title: const Text(
          "Bookmark",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.all(2)),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: "recherche",
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recently Viewed",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(
            height: screenHeight * 0.6,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemCount: displayedImages.length,
                itemBuilder: (context, index) {
                  bool isLastVisible = !showAll && index == 2;
                  return GestureDetector(
                    onTap:
                        isLastVisible
                            ? () {
                              setState(() {
                                showAll = true;
                              });
                            }
                            : null,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Card(
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              displayedImages[index]["image"] ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (isLastVisible)
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "32+ Recipes",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          //SizedBox(height: 10),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Made it", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(
            height: screenHeight * 0.6,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemCount: displayedImages.length,
                itemBuilder: (context, index) {
                  bool isLastVisible = !showAll && index == 2;
                  return GestureDetector(
                    onTap:
                        isLastVisible
                            ? () {
                              setState(() {
                                showAll = true;
                              });
                            }
                            : null,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Card(
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              displayedImages[index]["image"] ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (isLastVisible)
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "10+ Recipes",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Breaksfast", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(
            height: screenHeight * 0.6,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemCount: displayedImages.length,
                itemBuilder: (context, index) {
                  bool isLastVisible = !showAll && index == 2;
                  return GestureDetector(
                    onTap:
                        isLastVisible
                            ? () {
                              setState(() {
                                showAll = true;
                              });
                            }
                            : null,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Card(
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              displayedImages[index]["image"] ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (isLastVisible)
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "10+ Recipes",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
