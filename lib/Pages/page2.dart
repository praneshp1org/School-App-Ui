import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Page two"),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
            child: Text("Go to HomePage"),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/page1");
            },
            child: Text("Go to Page1"),
          ),
        ],
      ),
    );
  }
}
