import 'package:flutter/material.dart';
import 'package:school_app/tabs/home_page.dart';

class Tabbed extends StatefulWidget {
  const Tabbed({Key? key}) : super(key: key);

  @override
  State<Tabbed> createState() => _TabbedState();
}

class _TabbedState extends State<Tabbed> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), child: Text("Car")),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Home(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
