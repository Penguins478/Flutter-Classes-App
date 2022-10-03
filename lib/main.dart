import 'package:basicflutterworkshop_app/ButtonPage.dart';
import 'package:flutter/material.dart';
import 'package:basicflutterworkshop_app/RowCol.dart';
import 'package:basicflutterworkshop_app/MyExamClasses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        //home: ButtonPage());
        home: MyExamClasses());
    //home: RowCol());
  }
}

class ClubName extends StatelessWidget {
  const ClubName({
    Key? key,
    required this.clubname,
  }) : super(key: key);

  final clubname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Text(
          clubname,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
