import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 0.5,
      child: Container(
        // margin: EdgeInsets.only(left: 10, right: 10),
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
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
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Gideon Peters',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '07089342213',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Icon(
                    Icons.account_circle,
                    size: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
