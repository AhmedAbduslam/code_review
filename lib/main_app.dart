import './widgets/c_widget.dart';
import './widgets/card_tile.dart';
import './style.dart';
import './widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'widgets/app_bar.dart';

class MainApp extends StatelessWidget {
  double screeanHeight(context) {
    return MediaQuery.of(context).size.height -
        MyAppBar().appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: screeanHeight(context) * 0.21, //21% of the screen
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: <Widget>[
                Expanded(flex: 3, child: SearchBox()),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
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
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Container(
                    height: screeanHeight(context) *
                        0.08, // 8% of the screen height
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FittedBox(
                              child: Text('530 hotels found',
                                  style: TextStyle(fontSize: 12.0))),
                          InkWell(
                              onTap: () {},
                              child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Row(children: <Widget>[
                                    Text('Filters', style: medText),
                                    SizedBox(width: 6.0),
                                    FittedBox(
                                      child: Icon(Icons.sort,
                                          color: Theme.of(context).accentColor),
                                    )
                                  ])))
                        ])),
                Container(
                  height:
                      screeanHeight(context) * 0.71, // 67% of the screen height
                  child: ListView(
                    itemExtent: 230,
                    children: <Widget>[CardTile(), CardTile()],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
