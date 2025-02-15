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
  final List<Map<String, dynamic>> categories = [
    {"name": "Breakfast", "image": 'asset/image/1.jpeg'},
    {"name": "Luch", "image": 'asset/image/2.jpeg'},
    {"name": "Dinner", "image": 'asset/image/3.jpeg'},
    {"name": "Dessert", "image": 'asset/image/2.jpeg'},
  ];
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

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
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "recherche",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_1_outlined),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 5)
                                  ],
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
                                      height:100,
                                      width: 100,
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
                    SizedBox(
                      height: 20,
                    ),
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
                                   Container(
                                    width: 300,
                                    height: 100,
                                    child:  Image.network(
                                      categories[index]["image"]!,
                                      //height: 100,
                                      //width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                   ),
                                    SizedBox(
                                      height: 20,
                                      //width: 20,
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
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recipes of the Week"),
                    SizedBox(
                      height: 20,
                    ),
                    Text("See all",style: TextStyle(color: Colors.green),),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
