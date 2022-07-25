import 'package:flutter/material.dart';
import 'Marvel.dart';
void main() {
  runApp(MyApp());
} 
 class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyhomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}


class MyhomePage extends StatefulWidget {
  @override
  State<MyhomePage> createState() => _MyhomePageState();
}


class _MyhomePageState extends State<MyhomePage> {

  List<Toys> menu=[
    Toys("Funko Pop Spiderman", "859"),
    Toys("Funko Pop Mystrio", "859"),
    Toys("Funko Pop Ironman", "859"),
    Toys("Funko Pop Thor", "859"),
    Toys("Funko Pop Dr.Strang", "859")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MarvelShop"),
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("รายการที่ ${index+1}"),
            );
          },
          ),
        );
  }
}