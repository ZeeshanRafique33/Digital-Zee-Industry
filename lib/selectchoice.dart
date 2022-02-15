//import 'dart:html';

import 'package:digitalappsindustry/loginshopkeeper.dart';
import 'package:digitalappsindustry/loginuser.dart';
import 'package:flutter/material.dart';

class Selectrequirment extends StatefulWidget {
  const Selectrequirment({Key? key}) : super(key: key);

  @override
  _SelectrequirmentState createState() => _SelectrequirmentState();
}

class _SelectrequirmentState extends State<Selectrequirment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.brown[200],
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            const Center(
                child: Text(
              "What Would you\n     like to do?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginuser()));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Go shopping",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.shopping_bag)),
                      ],
                    ),
                  ),
                ),
                //

                const SizedBox(
                  width: 10,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Shopkeerlogin()));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Build My Shop",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.store)),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
