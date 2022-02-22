import 'dart:ui';

import 'package:flutter/material.dart';
import '../models/models.dart';

class RecipeScreen extends StatefulWidget{
  RecipeScreen ({Key? key}) : super(key: key);

  @override

  State<RecipeScreen> createState() => _RecipeScreenState();

}

class _RecipeScreenState extends State<RecipeScreen>{
  @override
  Widget build(BuildContext context) {

    List<String> images =[
      "assets/magazine_pics/p1.jpeg",
      "assets/magazine_pics/p2.jpeg",
      "assets/magazine_pics/puredeyuca.jpg"

    ];

    return MaterialApp(
      title: "Hot Recipes",
      home: Scaffold(
        body: Container(
          child: GridView.builder(
            itemCount: images.length ,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemBuilder: (BuildContext context, int index){
              return Image.asset(images[index]);
            },

          ),
        )
        ),
      );
  }


}
