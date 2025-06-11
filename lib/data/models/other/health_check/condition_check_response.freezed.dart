// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_check_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConditionCheckResponse {
  String get status;

  /// Create a copy of ConditionCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConditionCheckResponseCopyWith<ConditionCheckResponse> get copyWith =>
      _$ConditionCheckResponseCopyWithImpl<ConditionCheckResponse>(
          this as ConditionCheckResponse, _$identity);

  /// Serializes this ConditionCheckResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConditionCheckResponse &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'ConditionCheckResponse(status: $status)';
  }
}

/// @nodoc
abstract mixin class $ConditionCheckResponseCopyWith<$Res> {
  factory $ConditionCheckResponseCopyWith(ConditionCheckResponse value,
          $Res Function(ConditionCheckResponse) _then) =
      _$ConditionCheckResponseCopyWithImpl;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$ConditionCheckResponseCopyWithImpl<$Res>
    implements $ConditionCheckResponseCopyWith<$Res> {
  _$ConditionCheckResponseCopyWithImpl(this._self, this._then);

  final ConditionCheckResponse _self;
  final $Res Function(ConditionCheckResponse) _then;

  /// Create a copy of ConditionCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ConditionCheckResponse implements ConditionCheckResponse {
  _ConditionCheckResponse({required this.status});
  factory _ConditionCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$ConditionCheckResponseFromJson(json);

  @override
  final String status;

  /// Create a copy of ConditionCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConditionCheckResponseCopyWith<_ConditionCheckResponse> get copyWith =>
      __$ConditionCheckResponseCopyWithImpl<_ConditionCheckResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConditionCheckResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConditionCheckResponse &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'ConditionCheckResponse(status: $status)';
  }
}

/// @nodoc
abstract mixin class _$ConditionCheckResponseCopyWith<$Res>
    implements $ConditionCheckResponseCopyWith<$Res> {
  factory _$ConditionCheckResponseCopyWith(_ConditionCheckResponse value,
          $Res Function(_ConditionCheckResponse) _then) =
      __$ConditionCheckResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$ConditionCheckResponseCopyWithImpl<$Res>
    implements _$ConditionCheckResponseCopyWith<$Res> {
  __$ConditionCheckResponseCopyWithImpl(this._self, this._then);

  final _ConditionCheckResponse _self;
  final $Res Function(_ConditionCheckResponse) _then;

  /// Create a copy of ConditionCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(_ConditionCheckResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
