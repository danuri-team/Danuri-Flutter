// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExitRequest {
  String get usageId;

  /// Create a copy of ExitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExitRequestCopyWith<ExitRequest> get copyWith =>
      _$ExitRequestCopyWithImpl<ExitRequest>(this as ExitRequest, _$identity);

  /// Serializes this ExitRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExitRequest &&
            (identical(other.usageId, usageId) || other.usageId == usageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, usageId);

  @override
  String toString() {
    return 'ExitRequest(usageId: $usageId)';
  }
}

/// @nodoc
abstract mixin class $ExitRequestCopyWith<$Res> {
  factory $ExitRequestCopyWith(
          ExitRequest value, $Res Function(ExitRequest) _then) =
      _$ExitRequestCopyWithImpl;
  @useResult
  $Res call({String usageId});
}

/// @nodoc
class _$ExitRequestCopyWithImpl<$Res> implements $ExitRequestCopyWith<$Res> {
  _$ExitRequestCopyWithImpl(this._self, this._then);

  final ExitRequest _self;
  final $Res Function(ExitRequest) _then;

  /// Create a copy of ExitRequest
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
class _ExitRequest implements ExitRequest {
  _ExitRequest({required this.usageId});
  factory _ExitRequest.fromJson(Map<String, dynamic> json) =>
      _$ExitRequestFromJson(json);

  @override
  final String usageId;

  /// Create a copy of ExitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExitRequestCopyWith<_ExitRequest> get copyWith =>
      __$ExitRequestCopyWithImpl<_ExitRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExitRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExitRequest &&
            (identical(other.usageId, usageId) || other.usageId == usageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, usageId);

  @override
  String toString() {
    return 'ExitRequest(usageId: $usageId)';
  }
}

/// @nodoc
abstract mixin class _$ExitRequestCopyWith<$Res>
    implements $ExitRequestCopyWith<$Res> {
  factory _$ExitRequestCopyWith(
          _ExitRequest value, $Res Function(_ExitRequest) _then) =
      __$ExitRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String usageId});
}

/// @nodoc
class __$ExitRequestCopyWithImpl<$Res> implements _$ExitRequestCopyWith<$Res> {
  __$ExitRequestCopyWithImpl(this._self, this._then);

  final _ExitRequest _self;
  final $Res Function(_ExitRequest) _then;

  /// Create a copy of ExitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usageId = null,
  }) {
    return _then(_ExitRequest(
      usageId: null == usageId
          ? _self.usageId
          : usageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
