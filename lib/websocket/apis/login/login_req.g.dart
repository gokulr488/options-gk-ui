// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginReq _$LoginReqFromJson(Map<String, dynamic> json) => LoginReq(
      username: json['username'] as String,
      password: json['password'] as String,
    );

const _$LoginReqFieldMap = <String, String>{
  'username': 'username',
  'password': 'password',
};

Map<String, dynamic> _$LoginReqToJson(LoginReq instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
