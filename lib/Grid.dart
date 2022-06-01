// ignore_for_file: file_names
import 'package:flutter/material.dart';

class GridClass extends StatefulWidget {
  const GridClass({Key? key}) : super(key: key);

  @override
  _GridClassState createState() => _GridClassState();
}

bool click1 = true;
bool click2 = true;
bool click3 = true;
bool click4 = true;

class _GridClassState extends State<GridClass> {
  void iconPressed1() {
    setState(() {
      click1 = !click1;
    });
  }

  void iconPressed2() {
    setState(() {
      click2 = !click2;
    });
  }

  void iconPressed3() {
    setState(() {
      click3 = !click3;
    });
  }

  void iconPressed4() {
    setState(() {
      click4 = !click4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          // washer in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                            image: AssetImage(click1
                                ? 'assets/washer-off.png'
                                : 'assets/washer-on.png'),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: TextButton(
                              child: const Icon(Icons.power_settings_new,
                                  size: 40),
                              onPressed: iconPressed1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        " WASHER",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (click1 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // Light in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image(
                          image: AssetImage(click2
                              ? 'assets/light.png'
                              : 'assets/lightbulb.png'),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 92,
                        child: TextButton(
                          child: const Icon(Icons.power_settings_new, size: 40),
                          onPressed: iconPressed2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        " LIGHT",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (click2 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // AC in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage(click3
                                ? 'assets/aircon-off.png'
                                : 'assets/aircond.png'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: const Icon(Icons.power_settings_new,
                                  size: 40),
                              onPressed: (iconPressed3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        " AC",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (click3 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // fridge in the grid
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(10),
                        child: Image(
                          image: AssetImage(click4
                              ? 'assets/fridge-off.png'
                              : 'assets/fridge-on.png'),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 92,
                        child: TextButton(
                          child: const Icon(Icons.power_settings_new, size: 40),
                          onPressed: iconPressed4,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        " FRIDGE",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          (click4 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
