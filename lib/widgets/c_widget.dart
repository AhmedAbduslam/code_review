import '../style.dart';
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
        FittedBox(child: Text(head, style: smallText)),
        FittedBox(child: Text(body, style: medText))
      ],
    );
  }
}
