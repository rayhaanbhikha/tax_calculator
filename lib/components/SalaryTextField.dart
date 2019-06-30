import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Theme(
            data: Theme.of(context).copyWith(
                primaryColor: Colors.green, backgroundColor: Colors.black),
            child: TextFormField(
                style: TextStyle(color: Colors.orange),
                keyboardType: TextInputType.number,
                decoration: inputDecoration, 
                validator: (val) {
                  if(val.isEmpty) {
                    return "Please enter your salary";
                  }
                  return null;
                },)));
  }
}
