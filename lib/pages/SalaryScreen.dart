import 'package:flutter/material.dart';
import 'package:tax_calc/components/MainText.dart';
import 'package:tax_calc/components/MyCard.dart';
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
  final List<Widget> widgets = <Widget>[
    MainText(
      questionText: "How much do you get paid?",
      infoText: "Enter salary info",
    ),
    SalaryTextField(),
    MyCard(child: MyRadioButtons()),
    FloatingBtn()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(32),
        child: ListView.separated(
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return widgets[index];
          },
          separatorBuilder: (context, index) {
            double padding = index == widgets.length - 2 ? 20 : 10;
            return Padding(padding: EdgeInsets.all(padding));
          },
        ));
  }
}

class FloatingBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          elevation: 100.0,
          child: Icon(
            Icons.chevron_right,
            size: 30.0,
          ),
          backgroundColor: Colors.black,
          onPressed: () => print("hello world"),
        )
      ],
    );
  }
}
