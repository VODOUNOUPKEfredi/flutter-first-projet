import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Text("what would you like"),
              TextField(
                decoration: InputDecoration(
                  hintText: "rechercher tous les recettes ici",
                  //prefixIcon:Icon(Icon.search) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Categorie"),
                SizedBox(height: 20),
                Text("See All"),
              ]),
              //SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //CategoryCard(title: "Breakfast"),

                    ])
            ])));
  }
}
