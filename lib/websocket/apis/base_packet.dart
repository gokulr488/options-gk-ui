import 'package:options_gk/common/constants.dart';

part 'base_packet.g.dart';

@jsonSerializable
class BasePacket {
  String packetType;
  String payload;
  String? sessionId;

  BasePacket({
    required this.packetType,
    required this.payload,
    this.sessionId,
  });

  factory BasePacket.fromJson(Map<String, Object?> json) =>
      _$BasePacketFromJson(json);

  Map<String, Object?> toJson() => _$BasePacketToJson(this);
}
