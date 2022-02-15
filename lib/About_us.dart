import 'package:flutter/material.dart';

class About_us extends StatelessWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
      ),
      body: Column(
        children: [
          Text(
              "Hi this is Digital tech industry App. This is very helpful app for everyone\n"),
          Text("App Developer"),
          Text("Zeeshan Rafique\n Azad kashmir"),
          Text("Najam Ur Rahman\n Qila Didar Sing"),
          Text("Danyal Tariq\n Azad kashmir"),
        ],
      ),
    );
  }
}
