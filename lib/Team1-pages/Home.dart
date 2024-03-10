import 'package:flutter/material.dart';
import 'package:food_recipe/Widgets/Fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 64,left: 30),
              child:  Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [

                      Text("Hello Jega",style: fonts.MainText,),
                      SizedBox(height: 5,),
                      Text("What are you cooking today?",style: fonts.SideText ) ,
                    ],

                  ),
                ],
              ),
            )
          ],
       ),
    );
  }
}
