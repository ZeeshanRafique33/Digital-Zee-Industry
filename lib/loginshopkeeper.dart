// ignore_for_file: deprecated_member_use

import 'package:digitalappsindustry/Shopkeeper_SignUp_page.dart';
import 'package:flutter/material.dart';

class Shopkeerlogin extends StatefulWidget {
  const Shopkeerlogin({Key? key}) : super(key: key);

  @override
  _ShopkeerloginState createState() => _ShopkeerloginState();
}

class _ShopkeerloginState extends State<Shopkeerlogin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopkeeper Login page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.pink[100]),
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

                  FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shopkeeper_Signup()));
                      },
                      child: Text("New ShopKeeper? Create Account"))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
