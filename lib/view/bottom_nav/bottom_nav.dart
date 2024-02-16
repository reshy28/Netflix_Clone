import 'package:flutter/material.dart';
import 'package:netflix/view/home/homescreen.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int selectedindex = 0;
  List Screens = [
    homescreen(),
    Text("screen 2"),
    Text("screen 3"),
    Text("screen 4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (value) {
          setState(
            () {
              selectedindex = value;
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
        ],
      ),
      body: Screens.elementAt(selectedindex),
    );
  }
}
