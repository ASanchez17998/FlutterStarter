import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';


// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  // TODO: Add state variables and functions
  // 7
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    Container(
      child: const Card1(),
    ),
    // TODO: Replace with Card2
    Container(
      child: const Card2(),
    ),
    // TODO: Replace with Card3
    Container(
      child: const Card3(),
    ),
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Easy Cook',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor:
        Theme.of(context).textSelectionTheme.selectionColor,
// 10
        currentIndex: _selectedIndex,
// 11
        onTap: _onItemTapped,        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Details',
          ),
        ],
      ),    );
  }
}