
import 'package:flutter/material.dart';

const productsPageLimit = 10;

//Enums
enum TextSize {
  main,
  sub,
  large,
  normal,
  small,
}

enum TextColor {
  primary,
  primaryLight,
  black,
  white,
  danger, //red
  disabled,
  textButton //blue for raw text buttons such as hyperlink
}

//TODO remove this
void printInfo(String message) {
  debugPrint('[DEBUG INFO]: $message');
}
