import 'package:flutter/material.dart';
import 'package:labinfo/pages/labinfo_pages/second_pages/second_year/cs.dart';
import 'package:labinfo/pages/labinfo_pages/second_pages/second_year/is.dart';
import 'package:labinfo/pages/labinfo_pages/second_pages/second_year/it.dart';
import 'package:labinfo/pages/labinfo_pages/second_pages/second_year/sw.dart';

import '../../utils/color_utils.dart';

class Second_year extends StatefulWidget {
  const Second_year({Key? key}) : super(key: key);

  @override
  State<Second_year> createState() => _Second_yearState();
}

class _Second_yearState extends State<Second_year> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd year's Lab"),
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
              title: "CS Lab",
              icon: Icons.computer,
              warna: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Computer_sci()));
              },
            ),
            MyMenu(
              title: "IS Lab",
              icon: Icons.computer_rounded,
              warna: Colors.cyan,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Information_sys()));
              },
            ),
            MyMenu(
              title: "IT Lab",
              icon: Icons.computer_rounded,
              warna: Colors.blueGrey,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Information_tech()));
              },
            ),
            MyMenu(
              title: "SW Lab",
              icon: Icons.computer_rounded,
              warna: Colors.indigo,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Software_eng()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu(
      {required this.title,
      required this.icon,
      required this.warna,
      this.onTap});
  final Function()? onTap;
  final String title;
  final IconData icon;
  final MaterialColor warna;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7.0),
      color: Color.fromARGB(255, 237, 238, 237),
      child: InkWell(
        onTap: onTap,
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
