import 'package:flutter/material.dart';
import 'package:school_app/Pages/dashboard.dart';
import 'package:school_app/Pages/home_page.dart';
import 'package:school_app/Pages/page1.dart';
import 'package:school_app/Pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      //home: HomePage(),
      //initialRoute: "/",
      routes: {
        "/": (_) => HomePage(),
        "/page1": (_) => Page1(),
        "/page2": (_) => Page2(),
      },
    );
  }
}
