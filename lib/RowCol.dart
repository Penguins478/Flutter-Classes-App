import 'package:basicflutterworkshop_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowCol extends StatelessWidget {
  const RowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rows and Columns"),
        ),
        body: Column(
          children: [
            ClubName(clubname: "a"),
            ClubName(clubname: "b"),
            ClubName(clubname: "c"),
          ],
        ));
  }
}
