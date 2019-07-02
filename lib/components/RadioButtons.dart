import 'package:flutter/material.dart';

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

  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          radioButton(0, "Every Hour"),
          radioButton(1, "Every Day"),
          radioButton(2, "Every Week"),
          radioButton(3, "Every Month"),
          radioButton(4, "Every Year"),
        ],
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