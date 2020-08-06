import 'package:flutter/material.dart';

import './text.dart';
import './reset.dart';
import 'textcontrol.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  static List<String> texts = ["Hi There", "You Are Done"];
  static var textIndex = 0;
  void resetIndex() {
    setState(() {
      textIndex = 0;
    });
  }

  void increment() {
    setState(() {
      textIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assignment App'),
          ),
          body: textIndex < texts.length
              ? Column(
                  children: <Widget>[
                    TEXT(
                      text: texts,
                      index: textIndex,
                    ),
                    TextControl(increment),
                  ],
                )
              : Reset(resetIndex)),
    );
  }
}
