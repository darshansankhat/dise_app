import 'dart:math';

import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {

  int amount=0;
  int i=0;
  int j=0;
  List l1 = [
    "assets/image/dice (1).png",
    "assets/image/dice (2).png",
    "assets/image/dice (3).png",
    "assets/image/dice (4).png",
    "assets/image/dice (5).png",
    "assets/image/dice (6).png",
  ];
  List l2 = [
    "assets/image/dice (1).png",
    "assets/image/dice (2).png",
    "assets/image/dice (3).png",
    "assets/image/dice (4).png",
    "assets/image/dice (5).png",
    "assets/image/dice (6).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice App",
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //amount
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Amount : $amount",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight:
                    FontWeight.bold,
                ),
              ),
            ],
          ),
          //Dice
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "${l1[i]}",
                height: 150,
                width: 150,
              ),
              SizedBox(
                width: 30,
              ),
              Image.asset(
                "${l2[j]}",
                height: 150,
                width: 150,
              ),
            ],
          ),
          //Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Random rnd =Random();
                  int z = rnd.nextInt(6);
                  int y = rnd.nextInt(6);
                  setState(() {
                    i=z;
                    j=y;
                    amount=i+j+2;
                  });
                },
                child: Container(
                  width: 225,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.pink, width: 5),
                  ),
                  child: Center(
                    child: Text(
                      "Roll Dice",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
