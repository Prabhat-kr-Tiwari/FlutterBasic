import 'package:flutter/material.dart';

TextStyle myTextStyle11({
  Color textColor = Colors.black,
  FontWeight fontWeight = FontWeight.w600,
}) {
  return TextStyle(fontSize: 11, fontWeight: fontWeight);
}

TextStyle myTextStyle21(
{
  Color textColor = Colors.red,
  FontWeight fontWeight = FontWeight.w900
}
    ) {
  return TextStyle(fontSize: 21, fontWeight: fontWeight,color: textColor);
}
