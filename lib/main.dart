import 'package:flutter/material.dart';

import './Routes/Home/HomePage.dart';
import './Routes/Profile/ProfileMaking0.dart';

void main() {
  runApp(MyApp());
}

var CurrentIndex = 0;
var RendarableWidgets = [
  HomePage("Aditya Yadav"),
  Scaffold(),
  Scaffold(),
  ProfileMaking(),
  Scaffold()
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RendarableWidgets[CurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(0, 73, 160, 1),
          fixedColor: Colors.white,
          unselectedItemColor: Color.fromRGBO(185, 220, 214, 0.7),
          elevation: 5,
          currentIndex: CurrentIndex,
          onTap: (value) {
            setState(() {
              CurrentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(185, 220, 214, 1),
              ),
              label: "Home",
              activeIcon: Icon(Icons.home, color: Colors.white),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore,
                    color: Color.fromRGBO(185, 220, 214, 1)),
                label: "explore",
                activeIcon: Icon(Icons.explore_outlined, color: Colors.white)),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined,
                    color: Color.fromRGBO(185, 220, 214, 1)),
                label: "ONE"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined,
                    color: Color.fromRGBO(185, 220, 214, 1)),
                label: "Profile",
                activeIcon: Icon(Icons.account_circle, color: Colors.white)),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined,
                    color: Color.fromRGBO(185, 220, 214, 1)),
                label: "ONE")
          ],
        ));
  }
}
