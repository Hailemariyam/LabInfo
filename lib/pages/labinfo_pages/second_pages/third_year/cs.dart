import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Computer_sci extends StatefulWidget {
  const Computer_sci({Key? key}) : super(key: key);

  @override
  State<Computer_sci> createState() => _Computer_sciState();
}

class _Computer_sciState extends State<Computer_sci> {
  String content =
      "This report provides an overview of the thrid-year computer science  computer class lab report . The lab has a total of 19 computers, of which 19 are currently working and . The working computers include 13 , 6core i7 systems. The lab is used by third year computer science   students for coding, programming, and other related coursework. The lab administrator will continue to monitor the lab's status and ensure that all computers are functioning properly. Students are encouraged to report any issues they encounter to the lab technician for prompt resolution. The lab is an essential resource for students, and efforts will be made to ensure its optimal functionality.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd year's CS Lab"),
        backgroundColor: Color.fromARGB(255, 249, 3, 241),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ReadMoreText(
            content,
            trimLines: 3,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: "Show More",
            trimExpandedText: "Show Less",
            lessStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 197, 2, 184),
            ),
            moreStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 197, 2, 184),
            ),
            style: const TextStyle(
              fontSize: 17,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
