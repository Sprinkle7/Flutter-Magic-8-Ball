import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomiseNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Say What You Want?'),
          ),
          body: Container(
            child: Center(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                     randomiseNumber = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$randomiseNumber.png'),
              ),
            ),
          ),
        )
    );
  }
}
