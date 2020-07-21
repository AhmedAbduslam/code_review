import 'package:flutter/material.dart';
import '../style.dart';

class MyAppBar {
  final AppBar appBar = AppBar(
    centerTitle: true,
    title: Text(
      'Explore',
      style: bigText,
    ),
    leading: Icon(Icons.arrow_back),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
      IconButton(icon: Icon(Icons.location_on), onPressed: () {})
    ],
  );
}
