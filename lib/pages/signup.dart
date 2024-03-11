import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
    //Navigator.of(context).pushNamedAndRemoveUntil("pagename", (route) => false);
  }
  @override
  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Create an account", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),),
                const Text("Let’s help you set up your account, it won’t take long.", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400),),
                const SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(labelText: 'Name',
                      hintText: ("Enter Name"),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: HexColor("#D9D9D9"),
                      )),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: HexColor("#D9D9D9"),
                      )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email',
                      hintText: ("Enter Email"),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: HexColor("#D9D9D9"),
                      )),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: HexColor("#D9D9D9"),
                      )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  controller: emailAddress,
                ),
                const SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(labelText: 'Password',
                      hintText: ("Enter Passwrod"),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: HexColor("#D9D9D9"),

                      )),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                        color: HexColor("#D9D9D9"),
                      )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  controller: password,
                ),
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Confirm Password',
                          hintText: ("Retype Password"),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                            color: HexColor("#D9D9D9"),
                          )),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                            color: HexColor("#D9D9D9"),
                          )),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      controller: password,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Checkbox(value: isChecked,activeColor: HexColor('#FF9C00'), onChanged: (newBool){
                      setState(() {
                        isChecked = newBool;
                      });
                    }),
                    Text('Accept terms & Condition', style: TextStyle(color: HexColor('#FF9C00')),),
                  ],
                ),
                SizedBox(height: 26,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontFamily: 'Poppins')),
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF129575),
                          fixedSize: Size(315, 60),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ),
                      onPressed: () async {
                        try {
                          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailAddress.text,
                            password: password.text,
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        //Navigator.push(
                          //context,
                          //MaterialPageRoute(builder: (context) => const null ()),
                        //);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child : Row(
                    children: [
                      Expanded(child:Divider(
                        thickness: 0.5,
                        color: HexColor('#D9D9D9'),
                      ), 
                      ),
                      Padding(padding: const EdgeInsets.all(14.0),
                      child: Text('Or Sign in With',style: TextStyle(fontFamily: 'Poppins', color: HexColor('#D9D9D9')),),
                      ),
                      Expanded(child:Divider(
                        thickness: 0.5,
                        color: HexColor('#D9D9D9'),
                      ),
                      ),
                    ],
                  )
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon : Image.asset('assets/google.png'),
                      iconSize: 50,
                      onPressed: (){
                        signInWithGoogle();
                      },
                    ),
                    SizedBox(width: 25,),
                    IconButton(
                      icon : Image.asset('assets/facebook.png'),
                      iconSize: 50,
                      onPressed: (){
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?', style: TextStyle(fontFamily: 'Poppins')),
                    SizedBox(width: 4,),
                    Text('Sign In', style: TextStyle(color: HexColor('##FF9C00'), fontFamily: 'Poppins'),),
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
