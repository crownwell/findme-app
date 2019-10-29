import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;

  static const double _hPad = 16.0;

  TextSection(this._title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 5.0, _hPad, 4.0),
          child: Text(
            _title,
            style: Theme.of(context).textTheme.headline,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(18.0, 8.0, 138.0, 4.0),
          child: Text(
            'Connect with talents,',
            style: Theme.of(context).textTheme.body2,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(18.0, 8.0, _hPad, 4.0),
          child: Text(
            'services, tailored to your needs across',
            style: Theme.of(context).textTheme.body2,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(18.0, 8.0, _hPad, 4.0),
          child: Text(
            'the world with ease',
            style: Theme.of(context).textTheme.body2,
          ),
        )
      ],
    );
  }
}
