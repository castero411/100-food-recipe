import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:food_recipe/pages/splashScreen.dart';
import 'package:food_recipe/pages/searchPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SearchPage(),

    );
  }
}
