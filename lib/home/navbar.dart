import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:senyumin_flutter/camera/camera_screen.dart';
import 'package:senyumin_flutter/home/home.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    //PlaceholderWidget(Colors.white),
    //History(),
    //Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CameraScreen();
          }));
        },
        child: Icon(Icons.camera_alt_outlined),
        backgroundColor: Color(0xFFAF64FA),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFFFFF),
        onTap: onTabTapped, // new
        selectedItemColor: Color(0xFFAF64FA),
        unselectedItemColor: Color(0xFFA2A19F),
        selectedLabelStyle: TextStyle(fontSize: 7),
        unselectedLabelStyle: TextStyle(fontSize: 7),
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_very_satisfied),
            label: 'Support System',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat Moodku',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
