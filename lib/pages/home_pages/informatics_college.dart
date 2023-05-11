import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Informatics_College extends StatefulWidget {
  const Informatics_College({Key? key}) : super(key: key);

  @override
  State<Informatics_College> createState() => _Informatics_CollegeState();
}

class _Informatics_CollegeState extends State<Informatics_College> {
  String content =
      '''Informatics college is a renowned institution that offers a variety of academic programs in the field of informatics. The college is organized into four distinct departments: information systems, information technology, software engineering, and computer science. Each department offers specialized courses and training to help students build a strong foundation of knowledge and skills in their respective areas of study. Whether students are interested in pursuing a career in software development, network administration, or data analysis, the programs offered at Informatics college provide them with the tools and expertise they need to succeed.

One of the key resources available to students at Informatics college is the support of four experienced lab assistants. These assistants play a critical role in helping students navigate the various lab environments and equipment, and provide guidance and mentorship as needed. They work closely with faculty members to ensure that labs are well-equipped and properly maintained, and are always available to help students troubleshoot technical issues or answer questions related to their coursework.

Overall, Informatics college is a vibrant and dynamic academic community that is dedicated to advancing the field of informatics through cutting-edge research, innovative teaching methods, and a commitment to excellence in all aspects of its programs. Whether students are just starting out in their academic journeys or are seasoned professionals looking to advance their careers, Informatics college provides them with the resources and support they need to achieve their goals and succeed in the ever-evolving world of technology.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informatics College"),
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
