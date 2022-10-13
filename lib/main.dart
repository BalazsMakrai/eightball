import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Fortune teller",
          style: TextStyle(color: Colors.blueGrey),
        ),
        backgroundColor: Colors.white30,
      ),
      body: FortuneTeller(),
    ),
  ));
}

class FortuneTeller extends StatefulWidget {
  const FortuneTeller({Key? key}) : super(key: key);

  @override
  State<FortuneTeller> createState() => _FortuneTellerState();
}

class _FortuneTellerState extends State<FortuneTeller> {
  int numb = randNum();
  void changeAnser() {
    setState(() {
      numb = randNum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      child: Image.asset('images/ball$numb.png'),
      onPressed: () {
        changeAnser();
      },
    ));
  }
}

int randNum() {
  return Random().nextInt(5) + 1;
}
