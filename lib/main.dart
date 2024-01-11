import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spotifyinsta/product.dart';
import 'package:spotifyinsta/spotify.dart';
import 'package:spotifyinsta/welcome.dart';
import 'package:firebase_core/firebase_core.dart';


import 'amazon.dart';
import 'bottom.dart';
import 'insta.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAJhfQeuSyN09BtGMGeIC63kQ71Xw0-AHI",
        appId: "1:955114051904:web:6bd5a9257493e751ac02a5",
        messagingSenderId: "955114051904",
        projectId: "spotify-3205b"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Log(),
    );
    }
  }

