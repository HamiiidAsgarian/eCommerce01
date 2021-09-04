import 'package:flutter/material.dart';
import './app-bar.dart';
import './side-drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MyIranYekan'),
      debugShowCheckedModeBanner: false, ////TEST BANNER CLEANER!
      home: Scaffold(
        endDrawer: MyDrawer(),
        body: Nav(),
      ),
    );
  }
  // This widget is the root of your application.
}

