import 'package:flutter/material.dart';
import 'package:flutter_ku/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adopt A Pet',
      theme: ThemeData(primarySwatch: Colors.orange,),
      home: MainScreen(),
    );
  }
}
