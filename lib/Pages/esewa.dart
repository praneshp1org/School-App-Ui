import 'package:flutter/material.dart';

class Esewa extends StatefulWidget {
  const Esewa({Key? key}) : super(key: key);

  @override
  State<Esewa> createState() => _EsewaState();
}

class _EsewaState extends State<Esewa> {
  bool flag = false;
  String str = "See more";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ESEWA"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  if (flag == true) {
                    flag = false;
                    str = "See More";
                  } else {
                    flag = true;
                    str = "Show less";
                  }
                  print(flag);
                });
              },
              child: Text("$str"),
            ),
            flag == false
                ? SizedBox()
                : Container(
                    child: Column(
                      children: [
                        Text("IOE"),
                        Text("Institute of Engineering"),
                        Text("IOE"),
                        Text("Institute of Engineering"),
                        Text("IOE"),
                        Text("Institute of Engineering"),
                        Text("IOE"),
                        Text("Institute of Engineering"),
                        Text("IOE"),
                        Text("Institute of Engineering"),
                        Text("IOE"),
                        Text("Institute of Engineering"),
                        Text("IOE"),
                        Text("Institute of Engineering"),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
