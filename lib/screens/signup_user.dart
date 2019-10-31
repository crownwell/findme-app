import 'package:flutter/material.dart';

class SignupUser extends StatelessWidget {
  static const double _xPad = 30.0;
  final String _routeName = '/signup/user';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(_xPad, 0, _xPad, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your email';
                  }
                },
                // onSaved: (val) => setState(() => _user.firstName = val),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your email';
                  }
                },
                // onSaved: (val) => setState(() => _user.firstName = val),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF707070),
                      ),
                    )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your Password';
                  }
                },
                // onSaved: (val) => setState(() => _user.firstName = val),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF707070),
                      ),
                    )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your Password';
                  }
                },
                // onSaved: (val) => setState(() => _user.firstName = val),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: FlatButton(
                padding: EdgeInsets.all(25.0),
                onPressed: () {
                  _signInUser(context, '/user/dashboard');
                },
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  static _signInUser(context, routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
