import 'package:flutter/material.dart';
import 'package:labinfo/pages/labinfo_pages/fifth_year.dart';
import 'package:labinfo/pages/labinfo_pages/fourth_year.dart';
import 'package:labinfo/pages/labinfo_pages/second_year.dart';
import 'package:labinfo/pages/labinfo_pages/third_year.dart';
import 'package:labinfo/utils/color_utils.dart';

// show
//     BuildContext,
//     Card,
//     Center,
//     Color,
//     Column,
//     Container,
//     EdgeInsets,
//     GridView,
//     Icon,
//     Icons,
//     InkWell,
//     Key,
//     Scaffold,
//     State,
//     StatefulWidget,
//     Text,
//     TextStyle,
//     Widget;

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Lab Information"),
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
              title: "2nd year's Lab",
              icon: Icons.computer,
              warna: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Second_year()));
              },
            ),
            MyMenu(
              title: "3rd year's Lab",
              icon: Icons.computer_rounded,
              warna: Colors.cyan,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Third_year()));
              },
            ),
            MyMenu(
              title: "4th year's Lab",
              icon: Icons.computer_rounded,
              warna: Colors.blueGrey,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Fourth_year()));
              },
            ),
            MyMenu(
              title: "5th year's Lab",
              icon: Icons.computer_rounded,
              warna: Colors.indigo,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Fifth_year()));
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
      required this.onTap});
  final Function()? onTap;
  final String title;
  final IconData icon;
  final MaterialColor warna;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(7.0),
      color: const Color.fromARGB(255, 237, 238, 237),
      child: InkWell(
        onTap: onTap,
        splashColor: const Color.fromARGB(255, 112, 3, 112),
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
