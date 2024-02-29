import 'package:flutter/material.dart';
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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: screenWidth,),
          SlideSwitcher(
              containerHeight: 40,
              containerWight: 0,
              onSelect: (index)=>(){},
            children:
            const [
              Text("Name"),
              Text("Ingredients"),
              Text("Region"),
              Text("Category")
            ],
          ),
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
          ),
          GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
              Container(
                width: 25,
                height: 25,
                color: Colors.greenAccent,
              ),
            ],
          )

        ],
      ),
    );

  }
}
