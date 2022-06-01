import './Grid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 500,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            color: Colors.white,
            child: Row(
              children: const [
                Text("My Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        decorationColor: Colors.blue,
                        decorationStyle: TextDecorationStyle.solid)),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
          const Card(
            borderOnForeground: false,
            shadowColor: Colors.white,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: ListTile(
                leading: Text(
                  "All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationStyle: TextDecorationStyle.solid),
                ),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 650,
              width: 400,
              margin: const EdgeInsets.all(10),
              child: const GridClass(),
            ),
          ),
        ],
      ),
    );
  }
}
