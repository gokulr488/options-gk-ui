// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasePacket _$BasePacketFromJson(Map<String, dynamic> json) => BasePacket(
      packetType: json['packetType'] as String,
      payload: json['payload'] as String,
      sessionId: json['sessionId'] as String?,
    );

const _$BasePacketFieldMap = <String, String>{
  'packetType': 'packetType',
  'payload': 'payload',
  'sessionId': 'sessionId',
};

Map<String, dynamic> _$BasePacketToJson(BasePacket instance) =>
    <String, dynamic>{
      'packetType': instance.packetType,
      'payload': instance.payload,
      'sessionId': instance.sessionId,
    };
