import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:food_recipe/Team1-pages/Home.dart';
import 'package:food_recipe/Team1-pages/SignIn.dart';
import 'package:food_recipe/Team2-pages/splashScreen.dart';
import 'package:food_recipe/Team2-pages/searchPage.dart';

import 'Team1-pages/SignUp.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomePage(),

        routes: {

          "/login":(context)=> const SignIn(),
          "/homePage":(context)=> const HomePage(),
          "/SignIn":(context) => const SignUp(),
        }
        );
  }
}
