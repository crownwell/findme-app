import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[Text('Mr Raymond Messaged you')],
        ),
      ),
    );
  }
}
