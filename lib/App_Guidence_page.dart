import 'package:flutter/material.dart';

class App_guidline extends StatelessWidget {
  const App_guidline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helping Page"),
      ),
      body: Column(
        children: [
          Text("App Guidline page"),
        ],
      ),
    );
  }
}
