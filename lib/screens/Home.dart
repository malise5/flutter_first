import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.black12,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                width: 1.0,
                color: Colors.blueAccent
              )
            ),
            leading: IconButton(icon: const Icon(Icons.mouse), color: Colors.cyan,onPressed: (){}),
            title: const Text("Mouse", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            subtitle: const Text("A4Tech Mouse"),
            trailing: IconButton(icon: const Icon(Icons.add_shopping_cart),onPressed: (){}),
          )
        ],
      ),
    );
  }
}
