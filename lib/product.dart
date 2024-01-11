import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'color.dart';
import 'list.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbar,
        title: SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: SizedBox(
                    width: 5,
                    child: Icon(Icons.search)),
                labelText: "Search Amazon.in",
                suffixIcon: SizedBox(
                  width: 70,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 40,
                          child: Icon(Icons.qr_code_scanner_rounded)),
                      Icon(Icons.settings_voice),
                    ],
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 450,
              width: 450,
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: 550,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                          viewportFraction: 1.0,
                          autoPlay: false,
                          autoPlayAnimationDuration: Duration(milliseconds: 150),
                          enlargeCenterPage: false,
                          aspectRatio: 7.5/4
                      ),
                      itemCount: 6,
                      itemBuilder: (context, itemIndex, realIndex)
                      {
                        return Container(
                          color: Colors.cyan,
                          child: Image(image: AssetImage(product[itemIndex].image),height: 500,fit: BoxFit.cover),
                        );
                      },

                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 340,
                    child: Icon(Icons.share),),
                  Positioned(
                    top: 30,
                    right: 350,
                    child: Icon(Icons.local_offer),),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Icon(Icons.bookmarks_outlined),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("500k+ bought in past month",style: des,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: RichText(
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Visit Lenovo Store                                          ',style: desc),
                          TextSpan(text: "1,605",style: desc),
                        ]
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: RichText(
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'HP Laptop 15s, AMD Ryzen 7 5700U, 15.6-inch (39.6cm),FHD, 16GB ddr4,512GB SSD, AMD Radeon Graphics, Backlit KB, Thin&Light, Dual Speakers(Win 11, MSO 2021,Silver,!.69 kg),ey2001AU',style: descpription)
                        ]
                    )),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "Amazon's ",style: TextStyle(color: Colors.white,fontSize: 15) ),
                                TextSpan(text: 'Choice',style: TextStyle(color: Colors.orangeAccent,fontSize: 15))
                              ]
                          )),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: RichText(text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: '"for laptop uner 50000"',style: TextStyle(fontSize: 15,color: Colors.black)),
                            ]
                        ))
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.rotate_90_degrees_ccw),
                          Text('View 360',style: TextStyle(fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 240,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.view_in_ar),
                            Text('VIEW IN YOUR ROOM',style: TextStyle(fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 4,
              color: Colors.grey.shade400,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Deal of the Day",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: "-14% ",style: offer),
                      ]
                  )),
                  Icon(FontAwesomeIcons.indianRupeeSign,size: 17,),
                  Text("54,990",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "EMI ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                          TextSpan(text: "from 2,666. No cost EMI available. ",style: emi),
                          TextSpan(text: "EMI options ",style: desc),
                          TextSpan(text: "Inclusive of all taxes",style: emi)
                        ]
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: RichText(text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "Buy now,Pay in EMIs up to ",style: desc),
                      TextSpan(text: "24 months ",style: TextStyle(fontSize: 17,color: Colors.redAccent)),
                      TextSpan(text: "with Amazon pay Later",style: desc)
                    ]
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Activate Now",style: desc,),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.shade400,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RichText(
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.rtl,
                      text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: "Total: ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                          ]
                      )),
                  Icon(FontAwesomeIcons.indianRupeeSign,size: 15,),
                  Text('54,990',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: RichText(
                  //softWrap: true,
                  //textAlign: TextAlign.start,
                  //maxLines: 2,
                  //overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "FREE delivery ",style: desc),
                          TextSpan(text: "Friday,15 December. ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
                          TextSpan(text: "Order within ",style: TextStyle(fontSize: 15)),
                          TextSpan(text: "23 hrs 9 mins. ",style: order),
                          TextSpan(text: "Details",style: desc)
                        ]
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Deliver to Nivas - Tiruppur 641602",style: desc,)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Container(
                      child: Text("In stock",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.green),),
                    ),
                  ],
                ),
              ),
            ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        hint: Text("Qty : 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        items: <String>['1', '2', '3', '4', '5', '6', '7'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                            alignment: AlignmentDirectional.center,
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      width: 420,
                      height: 50,
                      //color: Colors.yellowAccent,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextButton(onPressed: (){}, child: Text("Add to Cart",style: TextStyle(color: Colors.black,fontSize: 17)),)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 420,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(onPressed: (){}, child: Text('Buy Now',style: TextStyle(color: Colors.black,fontSize: 17),)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("Secure transaction",style: desc,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: RichText(
                  //overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        children: <TextSpan>
                        [
                          TextSpan(text: "sold by ",style: TextStyle(color: Colors.black)),
                          TextSpan(text: "Appario Retail Private Ltd ",style: desc),
                          TextSpan(text: "and ",style: emi),
                          TextSpan(text: "Fulfiillrd by Amazon. ",style: desc)
                        ]
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Add to Wish List",style: desc,),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
