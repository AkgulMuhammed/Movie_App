

import 'package:flutter/material.dart';
import 'package:movie_app/pages/bootom_navigation.dart';


import 'package:movie_app/pages/navpages/home_page.dart';

import 'package:movie_app/pages/navpages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie',
      theme: ThemeData(
        
        primarySwatch: Colors.orange,
        
      
        
      ),
      home: const MainPage(),
    );
  }
}
