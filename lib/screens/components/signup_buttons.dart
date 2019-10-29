import 'package:flutter/material.dart';

import './button_component.dart';

class SignupButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: ButtonComponent(
            buttonText: 'Sign up as User',
            buttonColor: Theme.of(context).primaryColor,
            routeName: '/signup/user',
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: ButtonComponent(
            buttonText: 'Sign up as Merchant',
            buttonColor: Colors.black,
            routeName: '/signup/merchant',
          ),
        ),
      ],
    );
  }
}
