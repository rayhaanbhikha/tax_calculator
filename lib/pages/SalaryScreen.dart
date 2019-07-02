import 'package:flutter/material.dart';
import 'package:tax_calc/components/MainText.dart';
import 'package:tax_calc/components/RadioButtons.dart';
import 'package:tax_calc/components/SalaryTextField.dart';

class SalaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tax Form"),
          centerTitle: true,
        ),
        body: SalaryTemplate());
  }
}

class SalaryTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(32),
        child: ListView(
          children: <Widget>[
            MainText(
              questionText: "How much do you get paid?",
              infoText: "Enter salary info",
            ),
            Padding(padding: EdgeInsets.all(10)),
            SalaryTextField(),
            Padding(padding: EdgeInsets.all(10)),
            MyRadioButtons()
          ],
        ));
  }
}