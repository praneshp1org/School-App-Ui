import 'package:flutter/material.dart';

class Esewa extends StatefulWidget {
  const Esewa({Key? key}) : super(key: key);

  @override
  State<Esewa> createState() => _EsewaState();
}

class _EsewaState extends State<Esewa> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.width,
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: height * 0.25,
                width: width,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: height * 0.2,
              left: 20,
              child: Container(
                height: height * 0.2,
                width: width - 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: height * 0.41,
              left: 20,
              child: Container(
                height: height * 0.1,
                width: width - 40,
                child: ListTile(
                  title: Text("Pranesh Pyara Shrestha"),
                  subtitle:
                      Text("Electronics, Communication & Information Engineer"),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
            Positioned(
              top: height * 0.52,
              left: 20,
              child: Container(
                height: height * 0.1,
                width: width - 40,
                child: ListTile(
                  title: Text("Pranesh Pyara Shrestha"),
                  subtitle:
                      Text("Electronics, Communication & Information Engineer"),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
            ),
            Positioned(
              top: height * 0.64,
              left: 20,
              child: Container(
                height: height * 0.1,
                width: width - 40,
                child: ListTile(
                  title: Text("Pranesh Pyara Shrestha"),
                  subtitle:
                      Text("Electronics, Communication & Information Engineer"),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: height * 0.78,
              left: 20,
              child: Container(
                height: height * 0.1,
                width: width - 40,
                child: ListTile(
                  title: Text("Pranesh Pyara Shrestha"),
                  subtitle:
                      Text("Electronics, Communication & Information Engineer"),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
