import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget{
  const Card3({Key? key}): super(key: key);
  @override
Widget build(BuildContext context){
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 550
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/food.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // TODO 5: add dark overlay BoxDecoration
            Container(
              // 3
              padding: const EdgeInsets.all(16),
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 6
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  const SizedBox(height: 8),
                  // 8
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  // 9
                  const SizedBox(height: 30),
                ],
              ),
            ),
      Center(
        // 11
        child: Wrap(
          // 12
            alignment: WrapAlignment.start,
            // 13
            spacing: 12,
            // 14
            children: [
        Chip(
        label: Text('Healthy',
            style: FooderlichTheme.darkTextTheme.bodyText1),
        backgroundColor: Colors.black.withOpacity(0.7),
        onDeleted: () {
          print('delete');
        },
      ),
      Chip(
        label: Text('Vegan',
            style: FooderlichTheme.darkTextTheme.bodyText1),
        backgroundColor: Colors.black.withOpacity(0.7),
        onDeleted: () {
          print('delete');
        },
      ),
              Chip(
                label: Text('Carrots',
                    style: FooderlichTheme.darkTextTheme.bodyText1),
                backgroundColor: Colors.black.withOpacity(0.7),
                onDeleted: () {
                  print('delete');
                },
              ),
              Chip(
                label: Text('Potatoes',
                    style: FooderlichTheme.darkTextTheme.bodyText1),
                backgroundColor: Colors.black.withOpacity(0.7),
                onDeleted: () {
                  print('delete');
                },
              ),
              Chip(
                label: Text('Keto',
                    style: FooderlichTheme.darkTextTheme.bodyText1),
                backgroundColor: Colors.black.withOpacity(0.7),
                onDeleted: () {
                  print('delete');
                },
              ),
            ],
        ),
      ),
          ],
        ),
      ),
    );
  }
}