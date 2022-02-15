import 'dart:async';

import 'package:digitalappsindustry/selectchoice.dart';
import 'package:flutter/material.dart';

class splashscreens extends StatefulWidget {
  const splashscreens({Key? key}) : super(key: key);

  @override
  _splashscreensState createState() => _splashscreensState();
}

// ignore: camel_case_types
class _splashscreensState extends State<splashscreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Selectrequirment())));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              "assets/shop_logo.png",
              height: 300,
            ),
            Text(
              "Welcome to Digital Tech Industry",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
