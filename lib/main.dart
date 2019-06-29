import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tax_calc/MyTaxForm.dart';
import './CustomForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(title: Text("Tax Form")),
            body: ChangeNotifierProvider(
                builder: (context) => MyTaxForm(),
                child: CustomForm())
                )
            );
  }
}