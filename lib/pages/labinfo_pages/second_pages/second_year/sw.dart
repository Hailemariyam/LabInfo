import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Software_eng extends StatefulWidget {
  const Software_eng({Key? key}) : super(key: key);

  @override
  State<Software_eng> createState() => _Software_engState();
}

class _Software_engState extends State<Software_eng> {
  String content =
      "This report provides an overview of the second-year software computer class lab. The lab has a total of 25 computers, of which 23 are currently working and 2 Hp desk top core I 3 are not working. The working computers include 15 core i3, 10 core i5 systems. The non-working computers have been reported to the lab technician and are undergoing repair. The lab is used by second year software engineering students for coding, programming, and other related coursework. The lab administrator will continue to monitor the lab's status and ensure that all computers are functioning properly. Students are encouraged to report any issues they encounter to the lab technician for prompt resolution. The lab is an essential resource for students, and efforts will be made to ensure its optimal functionality.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd year's Software Lab"),
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
