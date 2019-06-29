import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tax_calc/MyTaxForm.dart';
import 'package:tax_calc/pages/SalaryScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blue[200]
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("Tax Form")),
            body: ChangeNotifierProvider(
                builder: (context) => MyTaxForm(),
                child: SalaryScreen())
                )
            );
  }
}