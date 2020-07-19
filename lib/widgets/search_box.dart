import 'package:code_review/style.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              height: 40.0,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'SEARCH',
                  hintStyle: smallText,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          RawMaterialButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(minWidth: 35.0, minHeight: 40.0),
            onPressed: () {},
            fillColor: Theme.of(context).accentColor,
            child: Icon(Icons.search, color: Colors.white),
            shape: CircleBorder(),
          )
        ],
      ),
    );
  }
}
