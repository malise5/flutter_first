import 'package:flutter/material.dart';


class FullDisplay extends StatelessWidget {
  FullDisplay ({Key? key}) : super(key: key);

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productsDetails = ["King Size Bed", "King Size Sofa", "King Size Chair"];
  List<int> price = [3000, 4500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Malise Store", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){},),
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          // IconButton(icon: Icon(Icons.menu_book),onPressed: (){},),
        ],
        elevation: 7.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              // margin: EdgeInsets.fromLTRB(0.0, 55.0, 0.0, 0.0),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("assets/image1.jpg"),
              ),
              accountEmail: Text("kudezx@gmail.com"),
              accountName: Text("Kudez Astro"),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){},),
            ListTile(leading: Icon(Icons.shopping_cart), title: Text("Shop"), onTap: (){},),
            ListTile(leading: Icon(Icons.favorite), title: Text("Favorites"), onTap: (){},),
            Padding( padding: const EdgeInsets.all(15.0), child: Text("Labels"),),
            ListTile(leading: Icon(Icons.label), title: Text("Red"), onTap: (){},),
            ListTile(leading: Icon(Icons.label), title: Text("Green"), onTap: (){},),
            ListTile(leading: Icon(Icons.label), title: Text("Blue"), onTap: (){},),
          ],
        ),
      ),
      body: Container(
        child:ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(products[index][0]),),
                title: Text(products[index],),
                subtitle: Text(productsDetails[index]),
                trailing: Text(price[index].toString()),
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home, color: Colors.black,),
                  Text("Home", style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart, color: Colors.black,),
                  Text("Shop", style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite, color: Colors.black,),
                  Text("Fav", style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.settings, color: Colors.black,),
                  Text("Setting", style: TextStyle(color: Colors.black),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
