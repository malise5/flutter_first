import "dart:math";

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard".toUpperCase()),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.cyan,
      body: Container(
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey,
            // borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.black, width: 5.0),
            shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage("assets/image1.jpg")),
        ),
        child: Text(
          "Boring",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      )
    );
  }
}

int getNumber(){
  Random random = new Random();
  var number = random.nextInt(100);
  return number;
}
