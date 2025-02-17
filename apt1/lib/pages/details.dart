import 'package:flutter/material.dart';
//import 'package:apt1/pages/bookmark.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: DetailsPage(),
    ),
  );
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() {
    return DetailsPageStates();
  }
}

class DetailsPageStates extends State<DetailsPage> {
  final List<Map<String, dynamic>> images = [
    {"image": "images1/3.png"},
    {"image": "images1/4.png"},
    {"image": "images1/3.png"},
    {"image": "images1/4.png"},
    {"image": "images1/3.png"},
    {"image": "images1/4.png"},
  ];
  int? indeximage;
  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        
        children: [
          ListView(
            children: [
              Positioned(
                top: 50,
                left: 50,

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  height: screenHeight * 0.3,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder:
                        (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              indeximage = index;
                            });
                          },
                          child: SizedBox(
                            height: screenHeight * 0.1,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  images[index]["image"]!,

                                  // fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            top: 160,
            child: Container(
              padding: EdgeInsets.all(10),
              height: screenHeight * 0.8,
              width: screenHeight * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        children: [
                          Text(
                            "Choco macaron",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "BY RachelWilliam",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(width: 120,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Text(
                        "4.5",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
               SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.access_time ,color: Colors.black.withOpacity(0.3) ,),
                    Text("10mins"),
                    Icon(Icons.analytics ,color: Colors.black.withOpacity(0.3)),
                    Icon(Icons.thermostat, color: Colors.black.withOpacity(0.3)),
                  Text("512cal")
                  ],
                )
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
