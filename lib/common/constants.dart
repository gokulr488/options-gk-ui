// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

const String WELCOME_SCREEN = 'welcome';
const String DASHBOARD_SCREEN = 'dashboard';
const String SIGN_IN_SCREEN = 'signIn';
const String AUTH_PROFILE_SCREEN = 'authProfile';
const String HISTORIC_DATA_SCREEN = 'historicData';

const jsonSerializable = JsonSerializable(
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
);

Widget web = Column(children: const [Text('Web under development')]);
