import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './CustomForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("Tax Form")),
            body: Center(child: CustomForm())));
  }
}
