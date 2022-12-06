import 'dart:convert';

import 'package:options_gk/common/constants.dart';

part 'login_resp.g.dart';

@jsonSerializable
class LoginResp {
  LoginResp({
    this.sessionId,
  });

  String? sessionId;

  factory LoginResp.fromJson(Map<String, Object?> json) =>
      _$LoginRespFromJson(json);

  Map<String, Object?> toJson() => _$LoginRespToJson(this);
}
