import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled)
          {
            return [SliverAppBar(
              expandedHeight: 10,
              floating: false,
              pinned: true,
              snap: false,
              //backgroundColor: Colors.black,
              leading: Icon(Icons.keyboard_backspace,),
              title: Text("mokkapost"),
              actions: [
                Icon(Icons.notifications_active_outlined,),
                SizedBox(
                  width: 70,
                  child: Icon(Icons.menu_outlined,),)
              ],
            ),
              SliverList(delegate: SliverChildBuilderDelegate(
                  childCount: 1,
                      (context, index) => ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/sn.jpg"),height: 80,width: 100,),
                            Padding(
                              padding: const EdgeInsets.all(22.8),
                              child: Column(
                                children: [
                                  Text("2989"),
                                  Text("posts"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("1.6M"),
                                  Text("Followers")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.8),
                              child: Column(
                                children: [
                                  Text("37"),
                                  Text("Following")
                                ],
                              ),
                            )
                          ],
                        ),
                        Text("cookd"),
                        TextButton(onPressed: (){}, child: Text("Cookd",style: TextStyle(color: Colors.grey.shade900),)),
                        Text("Kitchen/Cooking",style: TextStyle(color: Colors.grey.shade700),),
                        Text("Your Recipe for Happinesss "),
                        Text("Shop your favourite recipe mix"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){}, child: Text("Following")),
                              TextButton(onPressed: (){}, child: Text("Message")),
                              TextButton(onPressed: (){}, child: Text("Email")),
                              TextButton(onPressed: (){}, child: Icon(Icons.person_add_rounded)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              )
            ];
          }, body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 75,
            automaticallyImplyLeading: false,
            title: Container(
              height: 120,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/round shaped logo.jpg"),height: 50,width: 50,fit: BoxFit.fill,),
                            Text("story")
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            bottom: TabBar(
              //isScrollable: false,
              tabs: [
                Tab(icon: Icon(Icons.grid_view)),
                Tab(icon: Icon(Icons.ondemand_video_sharp)),
                Tab(icon: Icon(Icons.bookmark_add_outlined)),
                Tab(icon: Icon(Icons.person_pin_outlined),)
              ],
            ),
            //
          ),
          body: TabBarView(
            children: [
              Icon(Icons.image_search_sharp, size: 300),
              Icon(Icons.switch_video_outlined, size: 300),
              Icon(Icons.image_aspect_ratio_rounded, size: 300),
              Icon(Icons.people_rounded, size: 300),
            ],
          ),
        ),
      )
      ),

    );
  }
}
