import 'package:flutter/material.dart';
//import 'package:apt1/pages/bookmark.dart';

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
  
 final List<Map<String, dynamic>> images = [
    {"image": "images1/1.png"},
 ];
  int ?indeximage ;
 @override
  Widget build(BuildContext context) {
    EdgeInsets.all(40);

    EdgeInsets.only(bottom: 20);
 double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
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
                        height: screenHeight * 0.3,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              images[index]["image"]!,
                              height: screenHeight * 0.3,
                              width: screenWidth * 0.3,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
              
              ),
              child: 
              ListView(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Choco Macaron", style: TextStyle(color: Colors.black)),
                          Text("By Rachelle")
                        ],
                      )
                    ],
                    
                  ),

                   Row(
                    children: [
                          Icon(Icons.house_rounded),
                          Text("10mins"),
                          Icon(Icons.graphic_eq),
                          Text("Medium"),
                          Icon(Icons.house_rounded),
                          Text("525cal"),

                        ],
                      )
                    ],
                    
                  )
        ),
        
        Text("Description", style: TextStyle(fontWeight: FontWeight.bold),),
        Text("vcgftrefdtegdtdgryfhfhryetgetzrdfdrefrtfgfujghyruhyrtrgdte"),
        Text("Ingredients"),
        Column(
          children: [
          ListView.builder(
            itemCount: images.length,
            itemBuilder:
                        (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                             indeximage  = index;
                            });
                            
                          },
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset(images[index]["image"]),
                              ),
                              Text(images[index]["nom"]),
                            ],
                          ),
          )
        )],
        )
        ],
        
              ),
            )
          

          
        );
      
    
  }
  }

