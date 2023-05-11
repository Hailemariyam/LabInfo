import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Software_eng extends StatefulWidget {
  const Software_eng({Key? key}) : super(key: key);

  @override
  State<Software_eng> createState() => _Software_engState();
}

class _Software_engState extends State<Software_eng> {
  String content =
      "In the fourth year's lab, we have a total of 14 desktop computers available for use. Out of these, 7 computers are equipped with Core i7 processors, known for their high performance and efficient multitasking capabilities. The remaining 7 computers are powered by Core i3 processors, which are known for their reliable performance in everyday computing tasks. This diverse combination of Core i7 and Core i3 processors provides a balanced computing environment, catering to a variety of software requirements and user needs. With these powerful machines at our disposal, students and researchers in the lab can expect a seamless computing experience for their projects and experiments.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4th year's Software Lab"),
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
