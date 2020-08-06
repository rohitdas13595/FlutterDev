import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function control;
  TextControl(this.control);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: RaisedButton(
          child: Text(
            "Press Here",
            style: TextStyle(fontSize: 12),
          ),
          color: Colors.cyanAccent,
          onPressed: control),
      alignment: Alignment.center,
    );
  }
}
