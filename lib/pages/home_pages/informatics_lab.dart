import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Informatics_Lab extends StatefulWidget {
  const Informatics_Lab({Key? key}) : super(key: key);

  @override
  State<Informatics_Lab> createState() => _Informatics_LabState();
}

class _Informatics_LabState extends State<Informatics_Lab> {
  String content =
      "The informatics lab is a critical component of the academic programs offered in the Department of Informatics. The lab is comprised of four different areas: information systems, information technology, software engineering, and computer science. With such a wide range of fields represented, the lab is able to provide students with a diverse set of resources and tools to support their learning and development. The lab is home to a total of 266 working computers, providing students with ample computing power for their coursework and research. While there are 23 computers that are currently not functioning, the lab is staffed by experienced IT professionals who are dedicated to keeping the lab running smoothly and addressing any technical issues that arise. Overall, the informatics lab plays a crucial role in preparing students for successful careers in a variety of fields, and serves as a hub for innovation and collaboration in the Department of Informatics.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informatics Lab"),
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
