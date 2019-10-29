import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
      ),
      elevation: 0.8,
      // width: MediaQuery.of(context).size.width,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, right: 20),
        // margin: EdgeInsets.only(right: 20),
        width: MediaQuery.of(context).size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ORD123'),
                  Text(
                    '3 days ago',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(5.0),
                      child: Image.asset(
                        'assets/images/deliveryman.png',
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Portal Deliveries',
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Order Status:',
                                style: TextStyle(fontSize: 11.5),
                              ),
                              VerticalDivider(
                                width: 10,
                              ),
                              Text(
                                'DELIVERED',
                                style: TextStyle(
                                  fontSize: 11.5,
                                  backgroundColor: Colors.green,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 10),
              height: 0.5,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  'View Details',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
