import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int restante = 10;

  void _empezarcountdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (restante > 0) {
        setState(() {
          restante--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  restante.toString(),
                  style: TextStyle(fontSize: 70, color: Colors.white),
                ),
                MaterialButton(
                  onPressed: _empezarcountdown,
                  child: Text(
                    'Go!',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  color: Colors.greenAccent,
                ),
              ]),
        ));
  }
}
