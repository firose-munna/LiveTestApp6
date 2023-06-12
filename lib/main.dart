import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainActivity(),
    );
  }
}

class MainActivity extends StatelessWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mySnackBar(message, context){
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
      );
    }
    
    return Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(onPressed: (){
            mySnackBar("Cart is empty", context);
          }, icon: Icon(Icons.shopping_cart))
        ],
        title: Text("My Shopping List", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),),
        centerTitle: true,
        elevation: 7,
        backgroundColor: Colors.deepPurple,

      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("Apples", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text("Bananas", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text("Bread", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text("Milk", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              leading: Icon(Icons.shopping_basket),
            ),
            ListTile(
              title: Text("Egges", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              leading: Icon(Icons.shopping_basket),
            ),

          ],
        ),
      ),


    );
  }
}

