import 'package:flutter/material.dart';

class Shopkeeper_Signup extends StatefulWidget {
  const Shopkeeper_Signup({Key? key}) : super(key: key);

  @override
  _Shopkeeper_SignupState createState() => _Shopkeeper_SignupState();
}

class _Shopkeeper_SignupState extends State<Shopkeeper_Signup> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          const Center(
            child: Text(
              "Create Account",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
          ),

          //

          const Center(
              child: Text(
                  "Enter your Email,password, Confirm passowrd\n               for SigUp")),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Shop name", labelText: "Shop name"),
                ),
              ),

              //
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Shop Address", labelText: "Address")),
              ),

              //

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Email", labelText: "Email")),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Passowrd")),
              ),

              //

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter  Confirm Password",
                        labelText: "Confirm Password")),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text("Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                  "By Signing Up You agree to our Term\n Conditions and Privecy policy"),
            ],
          )),
        ],
      ),
    ));
  }
}
