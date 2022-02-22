import 'package:flutter/material.dart';

import '../models/models.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              recipe.subtitle,style: TextStyle(color: Colors.white)
            ),
            Positioned(
              child: Text(
                recipe.title, style: TextStyle(color: Colors.white),
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                recipe.message, style: TextStyle(color: Colors.white)
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                recipe.authorName, style: TextStyle(color: Colors.white)
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
