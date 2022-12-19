import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flags extends StatelessWidget {
   flags({Key? key}) : super(key: key);

  List l1=[
    "India",
    "Afghanistan",
    "Albania",
    "Bulgaria",
    "El Salvador",
    "Liechtenstein",
    "Mauritius",
    "Moldova",
    "Palau",
    "Peru",
  ];
  List l2=[
    "Delhi",
    "Kabul",
    "Tirana",
    "Sofia",
    "San Salvador",
    "Vaduz",
    "Port Louis",
    "Chișinău",
    "Ngerulmud",
    "Lima",
  ];
  List l3 = [
   "🇮🇳",
    "🇦🇫",
    "🇦🇱",
    "🇧🇬",
    "🇸🇻",
    "🇱🇮",
    "🇲🇺",
    "🏴󠁭󠁤󠁣󠁵󠁿",
    "🇵🇼",
    "🇵🇪",
   ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade900,
          title: Text(
            "Work 19-12-2022",
            style: TextStyle(
              color: CupertinoColors.white,
              fontStyle: FontStyle.italic,
              fontSize: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: l1.asMap().entries.map((e) => set(l1[e.key], l2[e.key] ,l3[e.key])).toList(),
          ),
        ),
      ),
    );
  }
 }

Widget set(String n,String n2,String n3)
{
  return Container(
    height: 70,
    width: 1500,
    margin: EdgeInsets.all(5),
    color: Colors.orange.shade200,
    child: Center(
      child: Text(
        "$n \n $n2 $n3",
        style: TextStyle(
          fontSize: 30,
          color: CupertinoColors.white,
        ),
      ),
    ),
  );
}