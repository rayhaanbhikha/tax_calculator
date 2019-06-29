import 'package:flutter/material.dart';
import './MyRaisedButton.dart';
import './TaxForm.dart';


class CustomForm extends StatefulWidget {
  @override
  CustomFormState createState() => CustomFormState();
}

class CustomFormState extends State<CustomForm> {
  final TaxForm _taxForm = new TaxForm();
  final validate = new Validate();
  final _formKey = GlobalKey<FormState>();

  onSubmit() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      _taxForm.save();
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Processing Data: ${_taxForm.firstName}"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "FirstName",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide()),
                    labelStyle: TextStyle(color: Colors.purple)),
                validator: (val) => validate("Please enter your name", val),
                onSaved: (val) => setState(() {
                      _taxForm.firstName = val;
                    }),
              ),
            ),
            MyRaisedButton(onSubmit)
          ]),
    );
  }
}

class Validate {
  call(String errorMessage, String value) {
    if (value.isEmpty) {
      return errorMessage;
    }
    return null;
  }
}