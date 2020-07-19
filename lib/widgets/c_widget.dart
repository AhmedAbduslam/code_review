import 'package:code_review/style.dart';
import 'package:flutter/material.dart';

class Cwidget extends StatelessWidget {
  final String head;
  final String body;
  Cwidget({this.head, this.body});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(head, style: smallText),
        SizedBox(
          height: 5.0,
        ),
        Text(
          body,
          style: medText,
        )
      ],
    );
  }
}