import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 330,
            height: 450
          ),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow()
            ],
            image: DecorationImage(
                image: AssetImage("assets/image1.jpg"),
                fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: const Stack(
            children: [
              Text("Editors Choice", style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,fontSize: 18),),
              Positioned(
                top: 20.0,
                child: Text("The art of Makin a Coffee", style: TextStyle(color: Colors.white,
                    fontSize: 22),),
              ),
              Positioned(
                right: 0,
                bottom: 20,
                child: Text("Learn to make perfect coffee", style: TextStyle(color: Colors.white,
                    fontSize: 16),),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text("Coding with tae", style: TextStyle(color: Colors.white,
                    fontSize: 16),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
