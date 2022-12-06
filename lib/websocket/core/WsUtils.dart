import 'package:json_annotation/json_annotation.dart';
import 'package:options_gk/websocket/apis/base_packet.dart';
import 'dart:convert';

class WsUtils {
  static String buildJson(JsonSerializable jsonObject, String packetType) {
    String jsonStr = json.encode(jsonObject.toJson());
    jsonStr.replaceAll('"', '\\"');
    BasePacket packet = BasePacket(packetType: packetType, payload: jsonStr);
    return json.encode(packet.toJson());
  }

  static BasePacket getBasePacket(String jsonStr) {
    BasePacket basePacket = BasePacket.fromJson(json.decode(jsonStr));
    basePacket.payload = basePacket.payload.replaceAll('\\"', '"');
    return basePacket;
  }
}
