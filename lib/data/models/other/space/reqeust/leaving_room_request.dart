import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaving_room_request.freezed.dart';
part 'leaving_room_request.g.dart';

@freezed
abstract class LeavingRoomRequest with _$LeavingRoomRequest{
  factory LeavingRoomRequest({
    required String usageId,
  }) = _LeavingRoomRequest;

  factory LeavingRoomRequest.fromJson(Map<String, dynamic> json) => _$LeavingRoomRequestFromJson(json);
}