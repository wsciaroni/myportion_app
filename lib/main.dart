import 'package:flutter/material.dart';
import 'package:myportion_app/screens/opening.dart';

void main() {
  runApp(MyPortionApp());
}

class MyPortionApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opening View',
      home: OpeningScreen(),
    );
  }
}
