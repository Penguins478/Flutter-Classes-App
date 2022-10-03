import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:basicflutterworkshop_app/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

int number = 0;

class _ButtonPageState extends State<ButtonPage> {
  setRandomNumber() {
    setState(() {
      var rng = Random();
      number = rng.nextInt(101);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widgets"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              RandomButton(
                  press:
                      setRandomNumber), // not setRandomNumber() because that has a return ( no () means just call the function)
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    alignment: Alignment.center,
                    child: Text("$number",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ))),
              )
            ],
          ),
        ));
  }
}

class RandomButton extends StatelessWidget {
  const RandomButton({Key? key, required this.press}) : super(key: key);

  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          press();
        },
        style: TextButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child:
            Text("Random Number pls", style: TextStyle(color: Colors.white)));
  }
}
