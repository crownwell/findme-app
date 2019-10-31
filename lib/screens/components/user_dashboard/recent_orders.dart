import 'package:flutter/material.dart';

import './../order_item.dart';

class RecentOrders extends StatelessWidget {
  final List<int> _numbers;
  RecentOrders(this._numbers);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recent Entries',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/user/order-history');
                },
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          height: MediaQuery.of(context).size.height * 0.45,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _numbers.length,
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: OrderItem());
              }),
        ),
      ],
    );
  }
}
