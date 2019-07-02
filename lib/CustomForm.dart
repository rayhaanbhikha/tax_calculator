import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tax_calc/MyTextFormField.dart';
import './MyRaisedButton.dart';
import './MyTaxForm.dart';

class CustomForm extends StatefulWidget {
  @override
  CustomFormState createState() => CustomFormState();
}

class CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    final MyTaxForm _taxForm = Provider.of<MyTaxForm>(context);
    final _formKey = GlobalKey<FormState>();

    onSubmit() {
      final form = _formKey.currentState;
      if (form.validate()) {
        form.save();
        _taxForm.save();
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Processing Data"),
        ));
      }
    }

    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyTextFormField(
                labelText: "First Name",
                errorMsg: "Please enter your firstName",
                onSaved: (val) => _taxForm.salary = val,
              ),
            MyTextFormField(
                labelText: "Last Name",
                errorMsg: "Please enter your firstName",
                onSaved: (val) => _taxForm.salary = val
              ),
            MyRaisedButton(onSubmit)
          ]),
    );
  }
}
