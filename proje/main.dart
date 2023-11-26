import 'package:flutter/material.dart';
import 'package:deneme/Login.dart';
import 'package:flutter/services.dart';

void main() {
SystemChrome.setSystemUIOverlayStyle(
  SystemUiOverlayStyle(statusBarColor: Colors.green));
  runApp(MyApp());
} 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false
    );
  }
}
