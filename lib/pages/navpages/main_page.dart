import 'package:flutter/material.dart';
import 'package:movie_app/pages/navpages/bookmark_page.dart';
import 'package:movie_app/pages/navpages/home_page.dart';
import 'package:movie_app/pages/navpages/play_page.dart';
import 'package:movie_app/pages/navpages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
    BookmarkPage(),
    PlayPage(),
    SettingsPage(),
  ];
  int currentIndex =0;  
  void onTap(int index){  
    setState(() {
      currentIndex=index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            onTap: onTap,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showSelectedLabels: false,
              showUnselectedLabels: false,
            elevation: 0,
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border_outlined),
                  label: 'bookmark'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_outline), label: 'play'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'settings'),
            ]),
        backgroundColor: Colors.black,
       
        );
  }
}