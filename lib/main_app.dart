import 'package:code_review/widgets/c_widget.dart';
import 'package:code_review/widgets/card_tile.dart';
import 'package:code_review/style.dart';
import 'package:code_review/widgets/search_box.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Column(children: <Widget>[
        Container(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: <Widget>[
                SearchBox(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Cwidget(
                              head: 'Chosse date', body: '12 Dec - 22 Dec')),
                      Expanded(
                        child: Container(
                            padding: EdgeInsets.only(left: 16.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                              width: 1.0,
                              color: Colors.grey[400],
                            ))),
                            child: Cwidget(
                                head: 'Number of rooms',
                                body: '1 Room - 2 Adults')),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('530 hotels found', style: TextStyle(fontSize: 12.0)),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text('Filters', style: medText),
                              SizedBox(width: 5.0),
                              Icon(Icons.sort,
                                  color: Theme.of(context).accentColor)
                            ],
                          )),
                    ),
                  ]),
              Container(
                width: double.infinity,
                height: 300.0,
                child: ListView(
                  itemExtent: 230,
                  children: <Widget>[CardTile(), CardTile()],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
