import 'package:flutter/material.dart';

class FormWithIcon extends StatelessWidget {
  final String _label;
  final IconData _icon;
  final String _validatorText;

  FormWithIcon(this._label, this._icon, this._validatorText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: _label,
          labelStyle: TextStyle(),
          suffixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              _icon,
              color: Color(0xFF707070),
            ),
          ),
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
