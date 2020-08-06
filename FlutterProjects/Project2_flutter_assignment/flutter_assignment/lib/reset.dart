import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final Function resetApp;
  Reset(this.resetApp);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(child: Text('Reset'), onPressed:resetApp),
    );
  }
}
