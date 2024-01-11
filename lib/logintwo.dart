import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spotifyinsta/page.dart';

import 'firebaseauth.dart';

class loigntwo extends StatefulWidget {
  const loigntwo({super.key});

  @override
  State<loigntwo> createState() => _loigntwoState();
}

class _loigntwoState extends State<loigntwo> {

  final FirebaseAuthService auth = FirebaseAuthService();
  TextEditingController ectrl = TextEditingController();
  TextEditingController pctrl = TextEditingController();

  @override
  void dispose(){
    ectrl.dispose();
    pctrl.dispose();
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
              controller: ectrl,
              decoration: InputDecoration(
                labelText: "Enter your Email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: pctrl,
              decoration: InputDecoration(
                labelText: "Enter password"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: signIn, child: Text("Login")),
          )
        ],
      ),
    );
  }

  void signIn() async{
    String email = ectrl.text;
    String password = pctrl.text;

    User? user = await auth.signInWithEmailAndPassword(email, password);

    if(user != null){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Welcome back...........")));
      Navigator.push(context, MaterialPageRoute(builder: (context) => pageone()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid Email and Password....")));
    }
  }
}
