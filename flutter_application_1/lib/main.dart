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
    Toys("Funko Pop Spiderman", "859","assets/imges/picture1.jpg"),
    Toys("Funko Pop Mystrio", "859","assets/imges/picture2.jpg"),
    Toys("Funko Pop Ironman", "859","assets/imges/picture3.jpg"),
    Toys("Funko Pop Thor", "859","assets/imges/picture4.jpg"),
    Toys("Funko Pop Dr.Strang", "859","assets/imges/picture5.jpg")
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
              leading: Image.asset(Toys.img),
              title: Text("รายการที่ ${index+1}"),
              onTap: (){
                print("คุณเลือกของเล่นที่ชื่อว่า = "+Toys.name")
              },
            );
          },
          ),
        );
  }
}