import 'package:flutter/material.dart';

class Model
{
  String? image;

  String? text;

  Model(this.image,this.text);


}

List lis= modelData.map((a) => Model(a["image"],a["text"])).toList();

var modelData = [
  {"image":"assets/round shaped logo.jpg","text":"Prime"},
  {"image":"assets/round shaped logo.jpg","text":"Fresh"},
  {"image":"assets/round shaped logo.jpg","text":"Deals"},
  {"image":"assets/round shaped logo.jpg","text":"Mobiles"},
  {"image":"assets/round shaped logo.jpg","text":"Mini TV"},
  {"image":"assets/round shaped logo.jpg","text":"Fashion"}
];


List slider= modeData.map((a) => Model(a["image"],a["text"])).toList();

var modeData = [
  {"image":"assets/sn.jpg"},
  {"image":"assets/round Shaped logo.jpg"},
  {"image":"assets/sn.jpg"},
  {"image":"assets/round Shaped logo.jpg"},
  {"image":"assets/sn.jpg"},
  {"image":"assets/round Shaped logo.jpg"},
];



List product= list.map((a) => Model(a["image"],a["text"])).toList();

var list = [
  {"image":"assets/am1.jpg"},
  {"image":"assets/am2.jpg"},
  {"image":"assets/am1.jpg"},
  {"image":"assets/am2.jpg"},
  {"image":"assets/am1.jpg"},
  {"image":"assets/am2.jpg"},
];


List box= list.map((a) => Model(a["image"],a["text"])).toList();

var listt = [
  Text("Item 1"),
  Text("Item 2"),
  Text("Item 3"),
  Text("Item 4"),
  Text("Item 5"),
  Text("Item 6"),
];

List<String> _locations = ['A', 'B', 'C', 'D'];