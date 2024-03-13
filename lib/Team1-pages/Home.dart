import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/Widgets/Fonts.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'Profile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String image = "https://s3-alpha-sig.figma.com/img/64a4/9f34/4d4d158f840b6e7be280c4e9b9b670d7?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QAKtK-tVAPAlnZQolintRa83g25eXr71EYb46xoESGd9nJYUVH3M1Th4bO3w8A2CbGKpSycc~4b6Fx0a2Ec7l2pQrq5Ff2mFNBlj1~vkpzhzYyxQ~ksbahY97iHmOYxbV-e4UAxCFOyrkti5jakGl-GeapKjRf2TFZ36EP-1MRd2IbE-DwNMsprUZFloHmc0rk9E1OPbag1Iv4r77IeletFBG2dsfcmUDhne8WFoQJyYeKBHiXqx1GilEbkWnviLSeZs2yy7I2Nb5bTJtS2efEzXq04Ih-oqfwy-OAnCLqdwnQgKY4O73nAhYGttpXm7X7exIKVC6zbRUPhTDC14UQ__";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64,left: 30),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [

                      Text("Hello Jega",style: fonts.MainText,),
                      SizedBox(height: 5,),
                      Text("What are you cooking today?",style: fonts.SideText,),

                    ],

                  ),
                  InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile() ));

                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 30),
                      height: 50,
                      width: 50 ,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 206, 128, 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Image.network(
                        image,height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  

                ],
              ),
            )

          ],
       ),



    );
  }

  press_button() {

    return;
  }
}
