import 'package:options_gk/common/constants.dart';

part 'login_req.g.dart';

@jsonSerializable
class LoginReq {
  LoginReq({
    required this.username,
    required this.password,
  });

  String username;
  String password;
  factory LoginReq.fromJson(Map<String, Object?> json) =>
      _$LoginReqFromJson(json);

  Map<String, Object?> toJson() => _$LoginReqToJson(this);
}
