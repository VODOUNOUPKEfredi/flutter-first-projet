import 'package:flutter/material.dart';

//import 'package:apt1/pages/details.dart';
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: AcceuilPage(),
    ),
  );
}

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});

  @override
  State<AcceuilPage> createState() {
    return AcceuilPageStates();
  }
}

class AcceuilPageStates extends State<AcceuilPage> {
  final List<Map<String, dynamic>> categories = [
    {"name": "Breakfast", "image": 'images1/3.png'},
    {"name": "Luch", "image": 'images1/3.png'},
    {"name": "Dinner", "image": 'images1/3.png'},
    {"name": "Dessert", "image": 'images1/3.png'},
  ];
  final List<Map<String, dynamic>> Recommandation = [
    {"name": "Breakfast", "image": 'images1/3.png'},
    {"name": "Luch", "image": 'images1/4.png'},
   
  ];
  final List<Map<String, dynamic>> Recipes = [
    {"name": "Breakfast", "image": 'images1/3.png'},
    {"name": "Breakfast", "image": 'images1/4.png'}
    
  ];
  
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 12,
        title: const Text(
          "hello",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "recherche",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories" ,style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: screenWidth * 0.05),
                Text("See all" ,style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.green),),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.15,
                  width: screenWidth * 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder:
                        (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.2,
                            margin: EdgeInsets.all(screenWidth * 0.01),
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  selectedIndex == index
                                      ? Colors.green
                                      : Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  categories[index]["image"]!,
                                 // height: screenHeight * 0.2,
                                 // width: screenWidth * 0.5,
                                  fit: BoxFit.cover,
                                ),
                               
                                Text(
                                  categories[index]["name"]!,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
                ),
                SizedBox(height: screenWidth * 0.1),

                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommendation" ,style: TextStyle(fontWeight: FontWeight.bold )),
                SizedBox(height: screenWidth * 0.05),
                Text("See all",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.green)),
              ],
              
            ),
                SizedBox(
                  height: screenHeight * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Recommandation.length,
                    itemBuilder:
                        (context, index) => GestureDetector(
                          child: Container(
                            height: screenHeight * 0.2,
                            width: screenWidth * 0.5,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: SizedBox(
                                //  width: screenHeight * 0.2,
                                //  height: screenWidth * 0.4,
                                  child: Image.asset(
                                    Recommandation[index]["image"]!,
                                    //height: 100,
                                    //width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            
                            
                            
                          
                          ),
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenWidth * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recipes of the Week" ,style: TextStyle(fontWeight: FontWeight.bold )),
                SizedBox(height: screenHeight * 0.1),
                Text("See all", style: TextStyle(color: Colors.green ,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.5,
              width: screenWidth * 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder:
                    (context, index) => GestureDetector(
                      child: Column(
                        children: [
                          Container(
                            height: screenHeight * 0.35,
                            width: screenWidth * 0.8,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              Recipes[index]["image"]!,
                              // height: screenHeight*0.8,
                              // width: screenWidth*0.5,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
