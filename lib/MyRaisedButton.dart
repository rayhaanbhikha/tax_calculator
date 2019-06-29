import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final Function onSubmit;

  MyRaisedButton(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onSubmit,
      child: Text("Submit"),
    );
  }
}