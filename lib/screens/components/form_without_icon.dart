import 'package:flutter/material.dart';

class FormWithoutIcon extends StatelessWidget {
  final String _label;
  final String _validatorText;

  FormWithoutIcon(this._label, this._validatorText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: _label,
          labelStyle: TextStyle(),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return _validatorText;
          }
        },
        // onSaved: (val) => setState(() => _user.firstName = val),
      ),
    );
  }
}
