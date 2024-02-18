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
      body:Column(
        children: [
          SizedBox(width: screenWidth,),
          const Row(
            children: [
                SearchBar(),
                SizedBox(width: 25,
                  height: 25,
                  child: FloatingActionButton(onPressed:null,
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
