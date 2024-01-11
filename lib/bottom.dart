import 'package:flutter/material.dart';
import 'package:spotifyinsta/spotify.dart';

import 'amazon.dart';
import 'insta.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

int _currentindex = 0;
final tabs  = [
login(),
spot(),
  insta(),
];

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home'
    ),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_music_sharp),
            label: 'Music',backgroundColor: Colors.blue,
    ),
           BottomNavigationBarItem(icon: Icon(Icons.video_collection_sharp),
            label: 'insta'
                ),
               ],
               onTap: (index){
    setState(() {
    _currentindex = index;
    });
    }
        ),
    );
  }
}
