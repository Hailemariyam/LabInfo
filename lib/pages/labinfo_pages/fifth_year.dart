import 'package:flutter/material.dart';
import 'package:labinfo/pages/labinfo_pages/second_pages/fifth_year/sw.dart';

import '../../utils/color_utils.dart';

class Fifth_year extends StatefulWidget {
  const Fifth_year({Key? key}) : super(key: key);

  @override
  State<Fifth_year> createState() => _Fifth_yearState();
}

class _Fifth_yearState extends State<Fifth_year> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5th year's Lab"),
        backgroundColor: Color.fromARGB(255, 249, 3, 241),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            MyMenu(
              title: "SW Lab",
              icon: Icons.computer_rounded,
              warna: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7.0),
      color: Color.fromARGB(255, 237, 238, 237),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Software_eng()));
        },
        splashColor: Color.fromARGB(255, 112, 3, 112),
        child: Center(
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 250.0,
                color: warna,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 161, 11, 236),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
