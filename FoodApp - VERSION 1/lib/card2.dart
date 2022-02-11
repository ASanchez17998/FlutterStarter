import 'package:flutter/material.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget{
  const Card2({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),

        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pollo.jpg'),
              fit: BoxFit.cover,

          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0)
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Ámbar Sánchez',
              title: 'Winner Best Chicken Awards',
              imageProvider: AssetImage('assets/ambars.jpeg'),
            ),
          ],
        ),


      ),
    );
    
  }
  
}