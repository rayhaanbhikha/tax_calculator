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
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5)),
              height: 40,
              child: Row(
                children: <Widget>[
                  _CurrencyIcon(),
                  Flexible(
                    child: SalaryTextField(),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class _CurrencyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      // color: Colors.grey,
      child: Icon(
        Icons.attach_money,
      ),
    );
  }
}

class SalaryTextField extends StatelessWidget {
  static final labelTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic);

  static final inputDecoration = InputDecoration(
      fillColor: Colors.white,
      filled: true,
      labelText: "Enter Salary",
      labelStyle: labelTextStyle,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            style: BorderStyle.solid, 
            width: 0.25,
            color: Colors.pink)));

  final textField = TextField(
      style: TextStyle(color: Colors.orange),
      keyboardType: TextInputType.number,
      decoration: inputDecoration);

  @override
  Widget build(BuildContext context) {
      return Theme(
          data: Theme.of(context).copyWith(
              hintColor: Colors.pink,
              primaryColor: Colors.green
              ),
          child: textField);
  }
}
