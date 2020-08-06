import 'package:flutter/material.dart';

class TEXT extends StatelessWidget {
  final List<String> text;
  final int index;

  TEXT({
    this.text,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Text(
        text[index],
        style: TextStyle(
          fontSize: 24,
          color: Colors.purple,
        ),
      ),
    );
  }
}
