import 'package:flutter/material.dart';
import 'package:school_app/Pages/dashboard.dart';
import 'package:school_app/Pages/dummy_page.dart';
import 'package:school_app/Pages/esewa.dart';
import 'package:school_app/Pages/home_page.dart';
import 'package:school_app/Pages/settings.dart';
import 'package:school_app/Pages/cart_page.dart';
import 'package:school_app/Pages/splash_screen.dart';
import 'package:school_app/Pages/tabbar.dart';

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
        "/": (_) => Tabbed(),
        "/page1": (_) => Settings(),
        "/page2": (_) => Esewa(),
        "/dash": (_) => Dashboard(),
      },
    );
  }
}
