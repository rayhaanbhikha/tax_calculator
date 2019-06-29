import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String questionText, infoText;
  MainText({@required this.questionText, @required this.infoText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.blue[50], borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _Question(questionText),
          Align(alignment: Alignment.bottomRight, child: _InfoIcon(infoText))
        ],
      ),
    );
  }
}

class _InfoIcon extends StatelessWidget {
  final String infoText;

  _InfoIcon(this.infoText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: IconButton(
        iconSize: 20.0,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        tooltip: infoText,
        padding: EdgeInsets.zero,
        icon: Icon(Icons.info),
        onPressed: () => print("button pressed"),
      ),
    );
  }
}

class _Question extends StatelessWidget {
  final String questionText;

  _Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(
          color: Colors.black54,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic),
    );
  }
}
