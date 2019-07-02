import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tax_calc/components/MainText.dart';
import 'package:tax_calc/components/SalaryTextField.dart';

class SalaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tax Form"),
          centerTitle: true,
        ),
        body: SalaryScreen());
  }
}

class SalaryScreen extends StatelessWidget {
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

class MyRadioButtons extends StatefulWidget {
  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  int _currValue = 1;

  void handleOnChange(val) {
    print(val);
    setState(() {
      _currValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          radioButton(0, "Every Hour"),
          radioButton(1, "Every Day"),
          radioButton(2, "Every Week"),
          radioButton(3, "Every Month"),
          radioButton(4, "Every Year"),
        ],
      ),
    );
  }

  Widget radioButton(int value, String radioText) {
    return Container(
        height: 30,
        child: Row(
          children: <Widget>[
            Radio(
                activeColor: Colors.green,
                groupValue: _currValue,
                value: value,
                onChanged: handleOnChange),
            Text(radioText)
          ],
        ));
  }
}
