import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:
      PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 50.0),
        child: AppBar(

          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
                setState(() {

                });
            },
          ),
          title: const Text('         SEARCH RECIPES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )
          ),
        ),
      ),
      body: const Column(
        children: [

        ],
      ),
      );
  }
}
