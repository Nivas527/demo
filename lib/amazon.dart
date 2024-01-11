import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spotifyinsta/product.dart';

import 'color.dart';
import 'list.dart';

class login  extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbar,
        automaticallyImplyLeading: false,
        //leading: Icon(Icons.home),
        title: SizedBox(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: SizedBox(
                width: 70,
                child: Row(
                  children: [
                    Icon(Icons.qr_code_scanner_outlined),
                    SizedBox(
                        width: 40,
                        child: Icon(Icons.settings_voice_outlined)),
                  ],
                ),
              ),
              fillColor: Colors.white,
              filled: true,
              //suffixicon: Icon(Icons.keyboard_voice_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              labelText: '  Search Amazon.in',
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: address
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,height: 50,),
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 10,height: 50,),
                  Text("Deliver to Nivas - 641602",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,height: 50,),
                  Icon(Icons.expand_circle_down_outlined)
                ],
              ),
            ),
            Container(
              height: 120,

              //color: Colors.black26,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 75,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          //borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage(lis[index].image),),
                            Text(lis[index].text)
                          ],
                        ),

                      ),
                    );
                  }
              ),
            ),
            Container(
              height: 220,
              width: 600,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 150),
                    enlargeCenterPage: false,
                    aspectRatio: 7.5/4,
                    viewportFraction: 1.0,
                ),
                itemCount: 6,
                itemBuilder: (context, itemIndex, realIndex)
                {
                  return Container(
                    color: Colors.cyan,
                    child: Image(image: AssetImage(product[itemIndex].image),fit: BoxFit.fill),
                  );
                },

              ),
            ),
            Column(
              children: [
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(height: 220,width: 200,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                                            },
                                            child: Image(image: AssetImage("assets/sn.jpg"),height: 70,width: 50,),
                                          ),
                                          Text("Amazon pay")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                                            },
                                            child: Image(image: AssetImage("assets/sn.jpg"),height: 70,width: 50,),),
                                          Text("Send Money")
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                                                },
                                                child: Image(image: AssetImage("assets/sn.jpg"),height: 70,width: 50,),),
                                              Text("Scan any QR")
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                                                },
                                                child: Image(image: AssetImage("assets/sn.jpg"),height: 70,width: 50,),),
                                              Text("Pay Bills")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Container(
                              height: 220,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Keep Shopping for Laptops",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  ),
                                  Image(image: AssetImage("assets/am1.jpg"),height: 150,fit: BoxFit.fill,)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 220,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Keep Shopping for Laptops",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  ),
                                  Image(image: AssetImage("assets/am1.jpg"),height: 150,fit: BoxFit.fill,)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 220,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Keep Shopping for Laptops",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                  ),
                                  Image(image: AssetImage("assets/am1.jpg"),height: 150,fit: BoxFit.fill,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.shade400,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("amazing deals for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
                      ),
                    ],
                  ),
                  Container(
                    height: 410,
                    child: GridView.builder(
                      //scrollDirection: Axis.horizontal,
                        gridDelegate: const  SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1.8/2,
                            crossAxisSpacing: 40,
                            mainAxisSpacing: 30),
                        itemCount: 4,
                        physics: new NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index)
                        {
                          return Container(
                            height: 200,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black26),
                              //borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    height: 160,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      // border: Border.all(width: 2),
                                      //borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:
                                    Image(image: AssetImage(lis[index].image),height: 70,width: 70,fit: BoxFit.fill,)),
                                Text(lis[index].text),
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text("See all deals",style: TextStyle(fontSize: 14,color: Colors.lightBlueAccent),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
