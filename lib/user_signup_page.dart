import 'package:flutter/material.dart';

class User_Signup extends StatefulWidget {
  const User_Signup({Key? key}) : super(key: key);

  @override
  _User_SignupState createState() => _User_SignupState();
}

class _User_SignupState extends State<User_Signup> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
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
                        hintText: "Enter User name", labelText: "User name"),
                  ),
                ),

                //
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter your Password",
                          labelText: "Password")),
                ),

                //

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Confirm Password",
                          labelText: "Confirm Password")),
                ),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),

                SizedBox(
                  height: 20,
                ),

                const Text(
                    "By Signing Up You agree to our Term\n Conditions and Privecy policy"),
              ],
            )),
          ],
        ));
  }
}
