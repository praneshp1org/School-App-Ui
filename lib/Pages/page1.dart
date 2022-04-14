import 'package:flutter/material.dart';
import 'package:school_app/Pages/home_page.dart';
import 'package:school_app/Pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page One"),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/page2");
              },
              child: Text("Go to Page 2"),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/");
              },
              child: Text("Go to HomePage"),
            ),
          ],
        ),
      ),
    );
  }
}
