import 'package:flutter/material.dart';

class OrderItemFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
          ),
          elevation: 0.8,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
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
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Order Status:',
                                    style: TextStyle(fontSize: 11.5),
                                  ),
                                  VerticalDivider(
                                    width: 140,
                                  ),
                                  Text(
                                    'AVAILABLE',
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
              ],
            ),
          )),
    );
  }
}
