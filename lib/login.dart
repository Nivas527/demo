import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spotifyinsta/auth_service.dart';
import 'package:spotifyinsta/firebaseauth.dart';
import 'package:spotifyinsta/page.dart';
import 'package:spotifyinsta/product.dart';

import 'logintwo.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {

  final FirebaseAuthService auth = FirebaseAuthService();

  TextEditingController userctrl = TextEditingController();
  TextEditingController emailctrl = TextEditingController();
  TextEditingController passctrl = TextEditingController();

  @override
  void dispose(){
    userctrl.dispose();
    emailctrl.dispose();
    passctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: userctrl,
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailctrl,
              decoration: InputDecoration(
                labelText: "Email ID"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passctrl,
              decoration: InputDecoration(
                labelText: "Password"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: signUp, child: Text("Sign up")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => loigntwo()));
            }, child: Text("Login")),
          ),
          ElevatedButton(onPressed: () => AuthService().signInWithGoogle(),
              child: Text("Google Sign in"))
        ],
      ),
    );
  }

  void signUp() async{
    String Username = userctrl.text;
    String email = emailctrl.text;
    String password = passctrl.text;

    User? user = await auth.signUpWithEmailAndPassword(email, password);

    if(user != null){
      print("User is Successfully Created");
      Navigator.push(context, MaterialPageRoute(builder: (context) => pageone()));
    }else{
      Text("Some error have Occured");
    }
  }

}
