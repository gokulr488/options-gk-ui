// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const List<Shadow> shadow = <Shadow>[
  Shadow(offset: Offset(2, 2), blurRadius: 3)
];

const Duration kAnimDuraction = Duration(milliseconds: 350);
const Cubic kAnimCurve = Curves.easeOut;

InputDecoration kTextFieldDecoration(ThemeData theme) {
  return InputDecoration().applyDefaults(theme.inputDecorationTheme);
}
