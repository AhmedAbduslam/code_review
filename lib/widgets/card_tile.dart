import 'package:code_review/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CardTile extends StatefulWidget {
  @override
  _CardTileState createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        shadowColor: Colors.white60,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        elevation: 6,
        margin: EdgeInsets.zero,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.topRight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://a36c2e13a78ae1256a2f-1dc878dead8ec78a84e429cdf4c9df00.ssl.cf1.rackcdn.com/u/grand-park-city-hall/photo-gallery/GPCH-Swimming-Pool-1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 35.0, minHeight: 35.0),
                      elevation: 0.0,
                      onPressed: () {
                        setState(() {
                          isFavorite ? isFavorite = false : isFavorite = true;
                        });
                      },
                      fillColor: Colors.white,
                      child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Theme.of(context).accentColor,
                          size: 20.0),
                      shape: CircleBorder(),
                    ),
                  )),
            ),
            Expanded(
              child: _description(),
            )
          ],
        ),
      ),
    );
  }
}

class _description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Grand Royal Hotel', style: bigText),
              Text('\$180', style: bigText),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Wembley, London', style: smallText),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Icon(
                      Icons.location_on,
                      color: Theme.of(context).accentColor,
                      size: 15.0,
                    ),
                  ),
                  Text('2 km to city', style: smallText)
                ],
              ),
              Text('/per night', style: TextStyle(fontSize: 10.0)),
            ],
          ),
          Row(
            children: <Widget>[
              SmoothStarRating(
                isReadOnly: true,
                color: Theme.of(context).accentColor,
                size: 15.0,
                borderColor: Theme.of(context).accentColor,
                rating: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('80 Reviews', style: smallText),
              )
            ],
          )
        ],
      ),
    );
  }
}
