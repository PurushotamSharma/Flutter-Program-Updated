import 'package:flutter/material.dart';

import 'main_drawer.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Program 8'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Text('Hello Guys...'),
        ),
      ),
    );
  }
}
