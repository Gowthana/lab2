import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
    ),
    theme: ThemeData(primarySwatch: Colors.orange),
  );
  runApp(app);
}
