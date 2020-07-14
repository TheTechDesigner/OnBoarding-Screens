import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = 'OnBoarding Example';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'OnBoarding Home',
          style: TextStyle(
            fontSize: 28.0,
            color: Color(0xFFC41A3B),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
