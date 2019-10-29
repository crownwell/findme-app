import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final String routeName;

  ButtonComponent({
    @required this.buttonText,
    @required this.buttonColor,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(18, 0.0, 18.0, 0),
      // padding: EdgeInsets.all(20.0),
      child: FlatButton(
        padding: EdgeInsets.all(18.0),
        onPressed: () {
          _handleClick(context, this.routeName);
        },
        color: buttonColor,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  static _handleClick(BuildContext context, routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
