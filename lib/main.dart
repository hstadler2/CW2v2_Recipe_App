/*
Harrison Stadler
CW2v2 - Recipe Book App
CSC 4360

main.dart
Entry point for the Recipe Book app, setting up the theme and initial route.
*/



import 'package:flutter/material.dart';
import 'home_screen.dart';  // Make sure this file is correctly linked to your HomeScreen.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book CW2v2 hstadler2',
      theme: ThemeData(
        // This is the theme of your application.
        // You can customize the primary color, font family, text themes, etc.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),  // Setting HomeScreen as the initial route when the app starts.
      debugShowCheckedModeBanner: false,  // Hides the debug banner in the top right corner.
    );
  }
}
