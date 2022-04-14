//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:school_app/Pages/page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/page1");
          },
          child: Text("Go to Page1"),
        ),
      ),
    );
  }
}
