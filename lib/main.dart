import 'package:flutter/material.dart';
import './home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scroll demo',
      home: HomeScreen(),
    );
  }
}
