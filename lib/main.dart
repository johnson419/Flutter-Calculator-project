// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bottom_nav_bar/messages.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'messages.dart';
import 'contacts.dart';
import 'notifications.dart';

void main() {
  runApp(const Bottomnav());
}

class Bottomnav extends StatefulWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedIndex = 0;
  var displayWord;
  List<dynamic> pages = [
    const Home(),
    const Messages(),
    const Contacts(),
    const Notifications(),
    
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BottomNav'),
          backgroundColor: Colors.green,
        ),
        body: pages.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_rounded,
                size: 30,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ),
                label: 'Notifications'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'Contacts',
            ),
          ],
          unselectedLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          // showUnselectedLabels: true,
          // showSelectedLabels: true,
          backgroundColor: Colors.greenAccent[400],

          selectedIconTheme: const IconThemeData(
            color: Colors.orange,
          ),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          currentIndex: selectedIndex,
          selectedItemColor: Colors.orange[600],
          selectedLabelStyle: const TextStyle(
            overflow: TextOverflow.clip,
          ),
          onTap: ((value) {
            setState(() {
              selectedIndex = value;
            });
          }),
        ),
      ),
    );
  }
}
