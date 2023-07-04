import 'package:flutter/material.dart';

void main() {
  runApp(basketball());
}

class basketball extends StatefulWidget {
  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  int teama = 0;

  int teamb = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Basketball Points",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text("Team A", style: TextStyle(fontSize: 40)),
                  Text(
                    "$teama",
                    style: TextStyle(fontSize: 80),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teama++;
                      });
                    },
                    child: Text(
                      "add 1 point",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(60, 60)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teama = teama + 2;
                      });
                    },
                    child: Text(
                      "add 2 point",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(60, 60)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teama = teama + 3;
                      });
                    },
                    child: Text(
                      "add 3 point",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(60, 60)),
                  ),
                ]),
                Container(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 30,
                    endIndent: 30,
                    color: Colors.black,
                  ),
                ),
                Column(children: [
                  const Text("Team B", style: TextStyle(fontSize: 40)),
                  Text(
                    "$teamb",
                    style: TextStyle(fontSize: 80),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamb++;
                      });
                    },
                    child: Text(
                      "add 1 point",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(60, 60)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamb = teamb + 2;
                      });
                    },
                    child: Text(
                      "add 2 point",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(60, 60)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamb = teamb + 3;
                      });
                    },
                    child: Text(
                      "add 3 point",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(60, 60)),
                  ),
                ]),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teama = 0;
                  teamb = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(60, 60)),
            ),
          ],
        ),
      ),
    );
  }
}
