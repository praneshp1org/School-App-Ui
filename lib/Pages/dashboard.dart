import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("DASHBOARD"),
        elevation: 0,
        //centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  right: 10,
                  child: Card(
                    elevation: 5,
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/80845871?v=4",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Pranesh Pyara Shrestha",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 5,
                          ),
                          Text("IOE, Pulchowk, BEI (II/I)",
                              style: TextStyle(fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Stack(),
            SizedBox(
              height: 100,
            ),
            Positioned(
              top: 350,
              child: Container(
                //height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 7,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/book.png",
                                width: 80,
                              ),
                              Text("SYLLABUS"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 7,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/clock.png",
                                width: 80,
                              ),
                              Text("ATTENDANCE"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 7,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/h.png",
                                width: 80,
                              ),
                              Text("HOMEWORK"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 7,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/exam.png",
                                width: 80,
                              ),
                              Text("EXAMS"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Teachers",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 3,
              child: Container(
                child: ListTile(
                  title: Text("Anand Kumar Shah"),
                  subtitle: Text("Microprocessor"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                ),
              ),
            ),

            Card(
              elevation: 3,
              child: Container(
                child: ListTile(
                  title: Text("Anup Shrestha"),
                  subtitle: Text("Object Oriented Programming"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                ),
              ),
            ),

            Card(
              elevation: 3,
              child: Container(
                child: ListTile(
                  title: Text("Shrijana Dhakal"),
                  subtitle: Text("Mathematics"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
