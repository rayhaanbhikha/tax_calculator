import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tax_calc/components/MainText.dart';

class SalaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MainText(
              questionText: "How much do you get paid?",
              infoText: "Enter salary info",
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(height: 40, child: SalaryTextField())
          ],
        ));
  }
}

class SalaryTextField extends StatelessWidget {
  static final labelTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic);

  static final inputDecoration = InputDecoration(
      prefixIcon: Icon(Icons.attach_money, color: Colors.greenAccent),
      labelText: "Enter Salary",
      labelStyle: labelTextStyle,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
              style: BorderStyle.solid, width: 0.25, color: Colors.pink)));

  final textField = TextField(
      style: TextStyle(color: Colors.orange),
      keyboardType: TextInputType.number,
      decoration: inputDecoration);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            primaryColor: Colors.green, backgroundColor: Colors.black),
        child: textField);
  }
}
