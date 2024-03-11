import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/pages/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBug9G44JZrH3t9QfPGMTLdrs6OUxaF70o",
      appId: "1:1078700594839:android:18fab7832486bfe1aa7bd2",
      projectId: "food-recipe-d47ec", messagingSenderId: '',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signup(),
    );
  }
}
