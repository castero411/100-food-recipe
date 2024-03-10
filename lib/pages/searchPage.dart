import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:slide_switcher/slide_switcher.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Search recipes",
        style: TextStyle(fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){},
            icon: const Icon(Icons.arrow_back
          )
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          SlideSwitcher(
            onSelect: (index) => setState(() => {}),
            containerHeight: 40,
            containerWight: screenWidth,
            slidersColors: const[
              Colors.green
            ],
            children: const [
              Text("Name",style: TextStyle(color: Colors.white),),
              Text("Ingredient",style: TextStyle(color: Colors.white),),
              Text("Region",style: TextStyle(color: Colors.white),),
              Text("Category",style: TextStyle(color: Colors.white),),
            ],
          ),
          const SizedBox(height: 25,),
           Row(
            children: [
              const SizedBox(width: 320,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: SearchBar(
                    hintText: "search recipe",
                    leading: Icon(Icons.search,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              IconButton(onPressed: () {
                print("icon button pressed");
              },
                  icon: const Icon(Icons.search,
                    color: Colors.green,
                  ),
              )
            ],
          ),
          const SizedBox(height: 25,),
          const Text("   Recent Search", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
          ),
          ),
          const SizedBox(height: 25,),
        ],
      ),
    );

  }
}
