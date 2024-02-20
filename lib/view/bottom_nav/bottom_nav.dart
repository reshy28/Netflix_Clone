import 'package:flutter/material.dart';
import 'package:netflix/view/comming_soon_screen/commig_soon_screen.dart';
import 'package:netflix/view/download_screeen/downloadscreen.dart';
import 'package:netflix/view/home_screen/homescreen.dart';
import 'package:netflix/view/more/morescreen.dart';
import 'package:netflix/view/search_screen/searchscreen.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int selectedindex = 0;
  List Screens = [
    homescreen(),
    searchscreen(),
    comming_soon_screen(),
    downloadscreen(),
    more_screen(),
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
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
      ),
      body: Screens.elementAt(selectedindex),
    );
  }
}
