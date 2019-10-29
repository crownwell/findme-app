import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const LargestTextSize = 40.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;
const Body2TextSize = 19.0;

const String FontNameDefault = 'EncodeSans';

const ButtonTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  color: Colors.white,
);

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.white,
);

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: LargeTextSize,
  color: Colors.blue,
);

const HeadlineTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: LargestTextSize,
  color: Color(0xFF3D4EE1),
);

const Body1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize,
  color: Colors.black,
);

const Body2TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: Body2TextSize,
  color: Colors.black,
);

const InputDecorationStyle = InputDecorationTheme(
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFC4C4C4)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black38),
  ),
  // focusedBorder: const OutlineInputBorder(
  //   borderSide:  BorderSide(color: Colors.customBlue),
  // ),
  labelStyle: const TextStyle(
    color: Color(0XFF272727),
  ),
);
