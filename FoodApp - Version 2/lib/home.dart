import 'package:flutter/material.dart';
import 'package:fooderlich/components/recipes_grid_view.dart';
import 'package:fooderlich/screens/recipes1.dart';
import 'screens/explore_screen.dart';
import 'screens/recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with ExploreScreen
    ExploreScreen(),
    RecipesScreen(),
    // TODO: Replace with RecipesScreen
    Container(color: Colors.tealAccent),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Easy Cook ',
          style: (
              TextStyle(fontSize: 30)
        ),
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To Buy',
          ),
        ],
      ),
    );
  }
}
