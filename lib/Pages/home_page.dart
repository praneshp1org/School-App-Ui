//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:school_app/Pages/page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selIndex = 1;
  void setValue(int a) {
    setState(() {
      selIndex = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int value) {
            setValue(value);
          },
          currentIndex: selIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
      appBar: AppBar(
        actions: [
          Icon(Icons.shopping_cart),
        ],
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu_book))),
        title: Text("Homepage"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/page1");
            //selIndex++;
          },
          child: Text("Change index"),
        ),
      ),
    );
  }
}
