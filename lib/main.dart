import 'package:TheRoom/room.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Room',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color.fromRGBO(219, 44, 101, 1),
        fontFamily: 'Montserrat',
      ),
      home: Room(),
    );
  }
}
