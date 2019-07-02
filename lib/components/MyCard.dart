import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget child;

  MyCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: child,
      ),
      elevation: 5,
    );
  }
}
