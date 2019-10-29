import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _imageLink;

  ImageBanner(this._imageLink);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints.expand(
        height: 250.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _imageLink,
        fit: BoxFit.cover,
      ),
    );
  }
}
