import 'package:flutter/material.dart';

import './../merchant_item.dart';

class FavouriteMerchants extends StatelessWidget {
  final List<int> _numbers;

  FavouriteMerchants(this._numbers);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favourite Merchants',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _numbers.length,
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    child: MerchantItem());
              }),
        ),
      ],
    );
  }
}
