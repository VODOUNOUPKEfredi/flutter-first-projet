import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage> {
  final List<Map<String, dynamic>> categories = [
    {
      "name": "Breakfast",
      "image":
          'https://img.freepik.com/photos-gratuite/assiette-viande-pommes-terre-souce_144627-6148.jpg?ga=GA1.1.1512817245.1739357619&semt=ais_hybrid'
    },
    {
      "name": "Luch",
      "image":
          'https://img.freepik.com/psd-gratuit/plateau-poulet-roti-delicieux-festin_632498-25445.jpg?ga=GA1.1.1512817245.1739357619&semt=ais_hybrid'
    },
    {
      "name": "Dinner",
      "image":
          'https://img.freepik.com/psd-gratuit/poulet-grille-barbecue-roti-epices-tomates-fond-transparent_84443-1377.jpg?ga=GA1.1.1512817245.1739357619&semt=ais_hybrid'
    },
    {
      "name": "Dessert",
      "image":
          'https://img.freepik.com/photos-premium/collations-ailes-poulet-saucisses-anneaux-calmar_263368-244.jpg?ga=GA1.1.1512817245.1739357619&semt=ais_hybrid'
    },
  ];
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    margin:
    EdgeInsets.all(40);
    Padding:
    EdgeInsets.only(bottom: 20);

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
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /* TextField(
                      decoration: InputDecoration(
                        labelText: "recherche",

                      ),
                    ),*/
                    Text("Categories"),
                    SizedBox(
                      height: 50,
                    ),
                    Text("See all"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                                height: 200,
                                width: 100,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedIndex == index
                                      ? Colors.green
                                      : Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                      categories[index]["image"]!,
                                      height: 50,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 15,
                                      width: 20,
                                    ),
                                    Text(categories[index]["name"]!,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                ))),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) => GestureDetector(
                            
                            child: Container(
                                height: 200,
                                width: 100,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                 
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                      categories[index]["image"]!,
                                      height: 50,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 15,
                                      width: 20,
                                    ),
                                    Text(categories[index]["name"]!,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                ))),
                      ),
                    )
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  Text("Recipes of the Week"),
  SizedBox(height: 20,),
  Text("See all"),
],
              ),

              SizedBox(
                      height: 150,
                      width: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) => GestureDetector(
                            
                            child: Container(
                                height: 200,
                                width: 100,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                 
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                      categories[index]["image"]!,
                                      height: 50,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 15,
                                      width: 20,
                                    ),
                                    Text(categories[index]["name"]!,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                ))),
                      ),
                    )
              ],
            )));
  }
}
