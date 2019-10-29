import 'package:flutter/material.dart';

import './components/text_section.dart';
import './components/image_banner.dart';
import './components/signup_buttons.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        // appBar: AppBar(
        //     // backgroundColor: Colors.transparent,
        //     ),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ImageBanner('assets/images/deliveryman.png'),
        TextSection(
          'FindMe',
        ),
        SignupButtons(),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Already a user? '),
              GestureDetector(
                onTap: () => _goToSignIn(context, '/signin'),
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        )
        // TextSection('DVLMP', 'Hey there'),
        // TextSection('DVLMP', 'Hey there'),
      ],
    ));
  }

  static _goToSignIn(context, routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
