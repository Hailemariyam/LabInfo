import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Information_sys extends StatefulWidget {
  const Information_sys({Key? key}) : super(key: key);

  @override
  State<Information_sys> createState() => _Information_sysState();
}

class _Information_sysState extends State<Information_sys> {
  String content =
      "This report provides an overview of the thrid-year information sytem  computer class lab. The lab has a total of 20 computers, of which 19 are currently working and 1 dell  desk top core I 5 are not working. The working computers include 19  core i5 systems. The non-working computers have been reported to the lab technician and are undergoing repair. The lab is used by thrid-year information sytem  students for coding, programming, and other related coursework. The lab administrator will continue to monitor the lab's status and ensure that all computers are functioning properly. Students are encouraged to report any issues they encounter to the lab technician for prompt resolution. The lab is an essential resource for students, and efforts will be made to ensure its optimal functionality.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd year's IS Lab"),
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
