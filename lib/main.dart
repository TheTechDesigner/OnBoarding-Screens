import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding_example/images.dart';
import 'package:on_boarding_example/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'OnBoarding';

  final _pageList = [
    PageModel(
      iconAssetPath: homeSVG,
      heroAssetPath: homePNG,
      heroAssetColor: Colors.white,
      color: Color(0xFFC41A3B),
      title: Text(
        'Home',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: Colors.white,
        ),
      ),
      body: Text(
        'All Popular or Recently Item are show.',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
    PageModel(
      iconAssetPath: categorySVG,
      heroAssetPath: categoryPNG,
      heroAssetColor: Colors.white,
      color: Colors.green,
      title: Text(
        'Category',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: Colors.white,
        ),
      ),
      body: Text(
        'All products show by category wise.',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
    PageModel(
      iconAssetPath: searchSVG,
      heroAssetPath: searchPNG,
      heroAssetColor: Colors.white,
      color: Colors.orange,
      title: Text(
        'Search',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: Colors.white,
        ),
      ),
      body: Text(
        'All product search by name or Unique ID.',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
    PageModel(
      iconAssetPath: cartSVG,
      heroAssetPath: cartPNG,
      heroAssetColor: Colors.white,
      color: Colors.grey,
      title: Text(
        'Cart',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: Colors.white,
        ),
      ),
      body: Text(
        'All cart item you can buy with one Click.',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
    PageModel(
      iconAssetPath: profileSVG,
      heroAssetPath: profilePNG,
      heroAssetColor: Colors.white,
      color: Colors.lime,
      title: Text(
        'Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: Colors.white,
        ),
      ),
      body: Text(
        'User Profile Show and also user edit Profile.',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        pageList: _pageList,
        doneButtonText: 'Done',
        doneButtonBackgroundColor: Color(0xFF1B1F32),
        onDoneButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
        skipButtonText: 'Skip',
        showSkipButton: true,
        skipButtonColor: Colors.transparent,
        onSkipButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    );
  }
}
