import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Information_tech extends StatefulWidget {
  const Information_tech({Key? key}) : super(key: key);

  @override
  State<Information_tech> createState() => _Information_techState();
}

class _Information_techState extends State<Information_tech> {
  String content =
      "This report provides an overview of the thrid-year information technology  computer class lab report . The lab has a total of 18 computers, of which all are not working .  the computer is stolen by some one .so the lab technical is know.The working computers include 18 core i5 systems. The lab is used by second year third -year information technology  students for coding, programming, and other related coursework. The lab administrator will continue to monitor the lab's status and ensure that all computers are functioning properly. Students are encouraged to report any issues they encounter to the lab technician for prompt resolution. The lab is an essential resource for students, and efforts will be made to ensure its optimal functionality.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd year's IT Lab"),
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
