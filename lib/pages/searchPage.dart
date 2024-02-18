import 'package:flutter/material.dart';

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
          title: const Text('Search recipe',
              style: TextStyle(
                fontWeight: FontWeight.bold,

              )
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          SizedBox(width: screenWidth,),
          const Row(
            children: [
              SearchBar(),
              SizedBox(width: 25,
                height: 25,
                child: FloatingActionButton(
                  onPressed: null,
                  backgroundColor: Colors.greenAccent,
                  child: Icon(Icons.search),
                ),
              )
            ],
          )
        ],
      ),
      );
  }
}
