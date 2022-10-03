import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:basicflutterworkshop_app/main.dart';

const darkColor = Color(0xff0A210F);
const lightColor = Color(0xffFFEECF);
const darkBlueColor = Color(0xff253C78);
const lightBlueColor = Color(0xff7C9299);
const pinkColor = Color(0xffD36582);

class MyExamClasses extends StatefulWidget {
  const MyExamClasses({super.key});

  @override
  State<MyExamClasses> createState() => _MyExamClassesState();
}

class _MyExamClassesState extends State<MyExamClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Academic Events",
            style: TextStyle(color: lightColor),
          ),
          backgroundColor: darkBlueColor,
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(17.5),
            child: Text(
              "Exam Today",
              style: TextStyle(
                  fontSize: 28,
                  color: darkBlueColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.325,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => ExamBox(),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: darkBlueColor,
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          child: Text(
                            "Create a New Exam Event",
                            style: TextStyle(
                              color: lightColor,
                              fontSize: 20,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.add,
                            color: lightColor,
                            size: 40,
                          ),
                        )
                      ],
                    ))),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Classes Today",
              style: TextStyle(
                fontSize: 28,
                color: darkBlueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ClassContainer(
            date: "10:30 AM",
            subject: "CS180 - Object Oriented Programming",
          ),
          SizedBox(height: 5.0),
          ClassContainer(
            date: "1:30 PM",
            subject: "CS250 - Microeconomics",
          ),
          SizedBox(height: 5.0),
          ClassContainer(
            date: "3:30 PM",
            subject: "MA251 - Multivariate Calculus",
          ),
        ]));
  }
}

class ExamBox extends StatelessWidget {
  const ExamBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.325,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: pinkColor.withOpacity(0.6), offset: Offset(10, 10))
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "20th September",
                    style: TextStyle(
                      color: lightColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextBox(title: "Exam: Calculus III"),
                TextBox(title: "Venue: Elliot Hall"),
                TextBox(title: "Topics Covered: "),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  width: 180,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10))),
                  alignment: Alignment.center,
                  child: Text(
                    "Geometry of Space",
                    style: TextStyle(
                        fontSize: 15,
                        color: darkBlueColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Image(
                      height: 80,
                      fit: BoxFit.fitWidth,
                      image: AssetImage("assets/images/calculator.png")),
                ),
              ],
            ),
          )),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key, required this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Text(
        title,
        style: TextStyle(
            color: lightColor, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class ClassContainer extends StatelessWidget {
  const ClassContainer({
    Key? key,
    required this.date,
    required this.subject,
  }) : super(key: key);

  final date;
  final subject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width * 8,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: pinkColor.withOpacity(0.4),
                offset: Offset(10, 10),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    date,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        subject,
                        style: TextStyle(
                          fontSize: 18,
                          color: darkBlueColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
