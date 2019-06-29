import 'package:flutter/material.dart';
import 'package:tax_calc/Validate.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText, errorMsg;
  final Function onSaved;

  MyTextFormField(
      {@required this.labelText,
      @required this.errorMsg,
      @required this.onSaved});

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      labelText: this.labelText,
      // fillColor: Colors.grey[100],
      // filled: true,
      border: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.green)),
      // labelStyle: TextStyle(color: Colors.purple)
    );

    return Container(
      height: 50.0,
      child: TextFormField(
          decoration: inputDecoration,
          validator: (val) => validate(this.errorMsg, val),
          onSaved: this.onSaved),
    );
  }
}
