//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:school_app/Pages/cart_page.dart';
import 'package:school_app/Pages/entryPage.dart';
import 'package:school_app/Pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selIndex = 0;
  void setValue(int a) {
    setState(() {
      selIndex = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.pushNamed(context, "/dash");
        },
        child: Icon(Icons.camera_alt_outlined),
      ),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            //BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
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
      body: selIndex == 0
          ? EntryPage()
          : selIndex == 1
              ? CartPage()
              : selIndex == 2
                  ? Settings()
                  : Text("Hell"),
    );
  }
}
