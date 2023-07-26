import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int pointsTeamA = 0;

  int pointsTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        title: 'Points Counter Game',
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 83, 72, 236),
              title: const Text("Points Counter Game",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      Text(
                        "Team A",
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "$pointsTeamA",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamA++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 128, 184),
                            minimumSize: Size(40, 55)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamA += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 128, 184),
                            minimumSize: Size(40, 55)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamA += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 128, 184),
                            minimumSize: Size(40, 55)),
                      ),
                    ]),
                    Container(
                      height: 450,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 0.8,
                        indent: 30,
                      ),
                    ),
                    Column(children: [
                      Text(
                        "Team B",
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "$pointsTeamB",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamB++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 128, 184),
                            minimumSize: Size(40, 55)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamB += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 128, 184),
                            minimumSize: Size(40, 55)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamB += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 128, 184),
                            minimumSize: Size(40, 55)),
                      ),
                    ]),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      pointsTeamA = 0;
                      pointsTeamB = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 252, 30, 30),
                      minimumSize: Size(80, 55)),
                ),
              ],
            ),
          ),
        ));
  }
}
