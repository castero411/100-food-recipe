import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            const SizedBox(height: 94) ,
            Container(
              margin: const EdgeInsets.only(left:30),
                child: Text("Hello,",style:TextStyle(fontSize: 40,color: Colors.black,height: 1,fontWeight: FontWeight.bold)),
            ),
            SizedBox.fromSize(size: const Size.fromHeight(10)),
            Container(
              margin: const EdgeInsets.only(left:30),
              child: Text("Welcome Back!,",style:TextStyle(fontSize: 20,color: Colors.black,height: 1)),
            ),

            const SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.only(left:30,right:30),
              child: TextFormField(
                style: const TextStyle(fontSize: 17,color: Colors.black,height: 1),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(255,255,255, 1),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(80,80,80,1))),
                ),


              ),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left:30,right:30),
              child: TextFormField(
                style: const TextStyle(fontSize: 17,color: Colors.white,height: 1),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1))),
                  hintText: "Enter Password",

                  hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(255,255,255, 1),
                  border: OutlineInputBorder(),

                ),


                obscureText: true,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left:30),
              child: const Text("Forgotten password?",style: TextStyle(color: Color.fromRGBO(
                  255, 156, 0, 1),fontSize: 10 ),textAlign: TextAlign.left ,  ),
            ),
            const SizedBox(height: 15,),

            const SizedBox(height: 15,),
            Container(
              height: 40,
              margin: const EdgeInsets.only(left:30,right: 30),
              child: MaterialButton(onPressed: (){
                //TODO : add a button function

              },
                color: const Color.fromRGBO(18, 149, 117, 1),textColor: Colors.white,
                child: const Text("Sign in  →"),),
            ),

          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(255,255,255,1),
    );
  }
}
