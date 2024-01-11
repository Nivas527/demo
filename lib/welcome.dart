import 'package:flutter/material.dart';
import 'package:spotifyinsta/bottom.dart';

import 'amazon.dart';

class welcome extends StatefulWidget {
  const welcome ({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

final _key = GlobalKey<FormState>();


class _welcomeState extends State<welcome> {


  TextEditingController otp = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon((Icons.home)),
        title: Text('Welcome'),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
        centerTitle: true,
        actions: [
          Icon(Icons.close)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill,alignment: Alignment.center),
              ),
            ),SizedBox(
              width: 400,
            ),
            SizedBox(
              height: 30,
            ),
            SafeArea(
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        validator: (one) {
                          if(one == null || one.isEmpty)
                          {
                            return "Invalid E mail";
                          }
                          if(!RegExp(r"@").hasMatch(one)) {
                            return "Enter Valid Email address";
                          }
                          if(!RegExp(r".com").hasMatch(one)){
                            return"Enter Valid Email address";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter E mail ID',
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: pass,
                        validator: (one) {
                          if(one == null || one.isEmpty)
                          {
                            return "Invalid Password";
                          }
                          if(RegExp(r"[$%*!@#&()+_]").hasMatch(one)){
                            return"No special characters Allowed";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Password',
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: otp,
                        validator: (one) {
                          if(one == null || one.isEmpty)
                          {
                            return "Invalid OTP";
                          }
                          if(RegExp(r"[a-zA-z]").hasMatch(one)){
                            return"Only Numbers are allowed";
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter OTP',
                          labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate())
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome back...........")));
                //Navigator.push(context, MaterialPageRoute(builder: (context) => bottom()),);
              }
            },
                child: Text("Login")),
          ],
        ),

      ),
    );
  }
}

