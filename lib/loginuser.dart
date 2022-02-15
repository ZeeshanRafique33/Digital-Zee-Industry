// ignore_for_file: deprecated_member_use

//import 'dart:html';

import 'package:digitalappsindustry/Home_Dashboard.dart';
import 'package:digitalappsindustry/user_signup_page.dart';
import 'package:flutter/material.dart';

class Loginuser extends StatefulWidget {
  const Loginuser({Key? key}) : super(key: key);

  @override
  _LoginuserState createState() => _LoginuserState();
}

class _LoginuserState extends State<Loginuser> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Login "),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  Image.asset(
                    "assets/splash.png",
                    height: 150,
                    width: 150,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text("Digital Tech Industry"),

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enetr gamil",
                          labelText: "Gmail",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),

                  //

                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),

                  //

                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Forget password",
                        style: TextStyle(color: Colors.blue),
                      )),

                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      )),

                  //
                  SizedBox(
                    height: 20,
                  ),

                  Column(
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => User_Signup()));
                          },
                          child: Text("New User? Create Account")),
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home_Dashboard()));
                          },
                          child: Text(
                            "Skip this Page",
                            style: TextStyle(backgroundColor: Colors.green),
                          ))
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
