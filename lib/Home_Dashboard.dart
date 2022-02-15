import 'package:carousel_slider/carousel_slider.dart';
import 'package:digitalappsindustry/About_us.dart';

import 'package:digitalappsindustry/App_Guidence_page.dart';
import 'package:digitalappsindustry/loginuser.dart';
import 'package:flutter/material.dart';

class Home_Dashboard extends StatefulWidget {
  const Home_Dashboard({Key? key}) : super(key: key);

  @override
  _Home_DashboardState createState() => _Home_DashboardState();
}

class _Home_DashboardState extends State<Home_Dashboard> {
  final image = [
    "assets/vivo.jpg",
    "assets/charger.jpg",
    "assets/l6.jpg",
    "assets/h3.jpg",
    "assets/l3.jpg",
    "assets/charger.jpg",
    "assets/vivo.jpg",
    "assets/oppo.jpg",
    "assets/t1.jpg",
    "assets/cover.jpg",
    "assets/h1.jpg",
    "assets/l1.jpg",
    "assets/h2.jpg",
    "assets/l2.jpg",
    "assets/muliti phone.jpg",
    "assets/h3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Digital Tech Industry"),
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
              itemCount: image.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image[index]), fit: BoxFit.fill)),
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true)),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5),
              itemCount: image.length,
              itemBuilder: (context, Index) => ClipRRect(
                    child: Image.asset(
                      image[Index],
                      fit: BoxFit.fill,
                    ),
                  )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Digital Tech Industry"),
              accountEmail: Text("flutterapps41@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("splash.png"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
              title: Text("Home Page"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_Dashboard()));
              },
            ),

            //login page list tile

            ListTile(
              leading: Icon(
                Icons.login,
                color: Colors.green,
              ),
              title: Text("Login page"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginuser()));
              },
            ),

            //About us

            ListTile(
              leading: Icon(
                Icons.info_rounded,
                color: Colors.green,
              ),
              title: Text("About us"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => About_us()));
              },
            ),

            //guidline page
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.green,
              ),
              title: Text("App Guidence"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => App_guidline()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
