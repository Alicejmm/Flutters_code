import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView with Row & Column"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Icon(Icons.map),
                Text("Map"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.photo_album),
                Text("Album"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone),
                Text("Phone"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}