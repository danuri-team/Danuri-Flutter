// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaving_room_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeavingRoomRequest {
  String get usageId;

  /// Create a copy of LeavingRoomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeavingRoomRequestCopyWith<LeavingRoomRequest> get copyWith =>
      _$LeavingRoomRequestCopyWithImpl<LeavingRoomRequest>(
          this as LeavingRoomRequest, _$identity);

  /// Serializes this LeavingRoomRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeavingRoomRequest &&
            (identical(other.usageId, usageId) || other.usageId == usageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, usageId);

  @override
  String toString() {
    return 'LeavingRoomRequest(usageId: $usageId)';
  }
}

/// @nodoc
abstract mixin class $LeavingRoomRequestCopyWith<$Res> {
  factory $LeavingRoomRequestCopyWith(
          LeavingRoomRequest value, $Res Function(LeavingRoomRequest) _then) =
      _$LeavingRoomRequestCopyWithImpl;
  @useResult
  $Res call({String usageId});
}

/// @nodoc
class _$LeavingRoomRequestCopyWithImpl<$Res>
    implements $LeavingRoomRequestCopyWith<$Res> {
  _$LeavingRoomRequestCopyWithImpl(this._self, this._then);

  final LeavingRoomRequest _self;
  final $Res Function(LeavingRoomRequest) _then;

  /// Create a copy of LeavingRoomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usageId = null,
  }) {
    return _then(_self.copyWith(
      usageId: null == usageId
          ? _self.usageId
          : usageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LeavingRoomRequest implements LeavingRoomRequest {
  _LeavingRoomRequest({required this.usageId});
  factory _LeavingRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$LeavingRoomRequestFromJson(json);

  @override
  final String usageId;

  /// Create a copy of LeavingRoomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeavingRoomRequestCopyWith<_LeavingRoomRequest> get copyWith =>
      __$LeavingRoomRequestCopyWithImpl<_LeavingRoomRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LeavingRoomRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeavingRoomRequest &&
            (identical(other.usageId, usageId) || other.usageId == usageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, usageId);

  @override
  String toString() {
    return 'LeavingRoomRequest(usageId: $usageId)';
  }
}

/// @nodoc
abstract mixin class _$LeavingRoomRequestCopyWith<$Res>
    implements $LeavingRoomRequestCopyWith<$Res> {
  factory _$LeavingRoomRequestCopyWith(
          _LeavingRoomRequest value, $Res Function(_LeavingRoomRequest) _then) =
      __$LeavingRoomRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String usageId});
}

/// @nodoc
class __$LeavingRoomRequestCopyWithImpl<$Res>
    implements _$LeavingRoomRequestCopyWith<$Res> {
  __$LeavingRoomRequestCopyWithImpl(this._self, this._then);

  final _LeavingRoomRequest _self;
  final $Res Function(_LeavingRoomRequest) _then;

  /// Create a copy of LeavingRoomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usageId = null,
  }) {
    return _then(_LeavingRoomRequest(
      usageId: null == usageId
          ? _self.usageId
          : usageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
