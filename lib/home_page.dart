import 'package:flutter/material.dart';
import 'package:labinfo/pages/home_pages/informatics_college.dart';
import 'package:labinfo/pages/home_pages/informatics_lab.dart';
import 'package:labinfo/utils/color_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("General Information"),
      //   backgroundColor: Color.fromARGB(255, 249, 3, 241),
      //   centerTitle: true,
      //   brightness: Brightness.dark,
      // ),
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
              title: "Informatics College",
              icon: Icons.school_rounded,
              warna: Colors.blue,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Informatics_College()));
              },
            ),
            MyMenu(
              title: "Informatics Lab",
              icon: Icons.computer_rounded,
              warna: Colors.green,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Informatics_Lab()));
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
      color: Color.fromARGB(255, 245, 245, 251),
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
