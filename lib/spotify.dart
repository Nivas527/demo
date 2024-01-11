import 'package:flutter/material.dart';

import 'color.dart';

class spot extends StatefulWidget {
  const spot({super.key});

  @override
  State<spot> createState() => _spotState();
}

class _spotState extends State<spot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: spotify,
            expandedHeight: 480,
            leading: Icon(Icons.keyboard_backspace_outlined),
            floating: false,
            pinned: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: spotify,
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 45,
                      child: Column(
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 250,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    prefixIcon: Icon(Icons.search),
                                    labelText: "Find in playlist",
                                    labelStyle: spo,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        labelStyle: spo,
                                        labelText: "Sort"
                                    ),
                                  ),
                                ),
                              ),
                            ],

                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 80,
                        top: 100,
                        child: Image(image: AssetImage("assets/sn.jpg"),height: 250,width: 250,fit: BoxFit.fill,)),
                    Positioned(
                        top: 110,
                        left: 90,
                        child: Icon(Icons.library_music_rounded)),
                    Positioned(
                      top: 355,
                      left: 10,
                      child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: "Nivas K prasanna, Siddhu Kumar, G.V Kumar ",style: TextStyle(color: Colors.green,fontSize: 16)),
                            TextSpan(text: "and more",style: spt),
                          ]
                      )),
                    ),
                    Positioned(
                      top: 380,
                      left: 10,
                      child: Row(
                        children: [
                          Icon(Icons.multitrack_audio_sharp),
                          RichText(text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "  Made for ",style: spt),
                                TextSpan(text: "Nivas",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))
                              ]
                          )),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 405,
                        left: 10,
                        child: Text("3h 53min",style: spt,)),
                  ],
                ),
              ),
              title: Container(
                  height: 25,
                  child: Row(
                    children: [
                      Text("2010's Mix"),
                      SizedBox(
                        width: 120,
                        child: Icon(Icons.play_circle_filled,color: Colors.green,size: 40,),),
                    ],
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child:
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(1),
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage("assets/sn.jpg"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 140,
                              height: 30,
                              child: Text("Ambikapathy",style: TextStyle(fontSize: 19,color: Colors.white,),)),
                          RichText(text: TextSpan(
                              children: const<TextSpan>[
                                TextSpan(text: "  Lyrics ",style: TextStyle(backgroundColor: Colors.grey,fontSize: 12)),
                                TextSpan(text: "   A.R. Rahman,Naresh Iyer",style: TextStyle(color: Colors.grey,fontSize: 12))
                              ]
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 60,
                        child: Icon(Icons.menu,color: Colors.grey,))
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
