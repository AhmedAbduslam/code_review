import '../style.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10.0),
        //   child:
        LayoutBuilder(builder: (context, constraints) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 10.0),
                height: constraints.maxHeight*.5,
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
              constraints: BoxConstraints(minWidth: constraints.maxHeight*.5, minHeight: constraints.maxHeight*.5),
              onPressed: () {},
              fillColor: Theme.of(context).accentColor,
              child: Icon(Icons.search, color: Colors.white),
              shape: CircleBorder(),
            )
          ]
          // ),
          );
    });
  }
}
