import 'package:flutter/material.dart';

class MerchantItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'user/merchant/view');
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(5.0),
                  child: Image.asset(
                    'assets/images/deliveryman.png',
                    fit: BoxFit.cover,
                    height: 140,
                    width: 150,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Portal Deliveries',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Colors.blue,
                    ),
                    Text(
                      '4.72',
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
