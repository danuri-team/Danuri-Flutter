// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_space_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UsageSpaceStatusResponse _$UsageSpaceStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _SpaceUsageStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$UsageSpaceStatusResponse {
  List get usageSpaceStatus;

  /// Create a copy of UsageSpaceStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsageSpaceStatusResponseCopyWith<UsageSpaceStatusResponse> get copyWith =>
      _$UsageSpaceStatusResponseCopyWithImpl<UsageSpaceStatusResponse>(
          this as UsageSpaceStatusResponse, _$identity);

  /// Serializes this UsageSpaceStatusResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsageSpaceStatusResponse &&
            const DeepCollectionEquality()
                .equals(other.usageSpaceStatus, usageSpaceStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(usageSpaceStatus));

  @override
  String toString() {
    return 'UsageSpaceStatusResponse(usageSpaceStatus: $usageSpaceStatus)';
  }
}

/// @nodoc
abstract mixin class $UsageSpaceStatusResponseCopyWith<$Res> {
  factory $UsageSpaceStatusResponseCopyWith(UsageSpaceStatusResponse value,
          $Res Function(UsageSpaceStatusResponse) _then) =
      _$UsageSpaceStatusResponseCopyWithImpl;
  @useResult
  $Res call({List usageSpaceStatus});
}

/// @nodoc
class _$UsageSpaceStatusResponseCopyWithImpl<$Res>
    implements $UsageSpaceStatusResponseCopyWith<$Res> {
  _$UsageSpaceStatusResponseCopyWithImpl(this._self, this._then);

  final UsageSpaceStatusResponse _self;
  final $Res Function(UsageSpaceStatusResponse) _then;

  /// Create a copy of UsageSpaceStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usageSpaceStatus = null,
  }) {
    return _then(_self.copyWith(
      usageSpaceStatus: null == usageSpaceStatus
          ? _self.usageSpaceStatus
          : usageSpaceStatus // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageStatusResponse implements UsageSpaceStatusResponse {
  _SpaceUsageStatusResponse({required final List usageSpaceStatus})
      : _usageSpaceStatus = usageSpaceStatus;
  factory _SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageStatusResponseFromJson(json);

  final List _usageSpaceStatus;
  @override
  List get usageSpaceStatus {
    if (_usageSpaceStatus is EqualUnmodifiableListView)
      return _usageSpaceStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usageSpaceStatus);
  }

  /// Create a copy of UsageSpaceStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceUsageStatusResponseCopyWith<_SpaceUsageStatusResponse> get copyWith =>
      __$SpaceUsageStatusResponseCopyWithImpl<_SpaceUsageStatusResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceUsageStatusResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceUsageStatusResponse &&
            const DeepCollectionEquality()
                .equals(other._usageSpaceStatus, _usageSpaceStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_usageSpaceStatus));

  @override
  String toString() {
    return 'UsageSpaceStatusResponse(usageSpaceStatus: $usageSpaceStatus)';
  }
}

/// @nodoc
abstract mixin class _$SpaceUsageStatusResponseCopyWith<$Res>
    implements $UsageSpaceStatusResponseCopyWith<$Res> {
  factory _$SpaceUsageStatusResponseCopyWith(_SpaceUsageStatusResponse value,
          $Res Function(_SpaceUsageStatusResponse) _then) =
      __$SpaceUsageStatusResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List usageSpaceStatus});
}

/// @nodoc
class __$SpaceUsageStatusResponseCopyWithImpl<$Res>
    implements _$SpaceUsageStatusResponseCopyWith<$Res> {
  __$SpaceUsageStatusResponseCopyWithImpl(this._self, this._then);

  final _SpaceUsageStatusResponse _self;
  final $Res Function(_SpaceUsageStatusResponse) _then;

  /// Create a copy of UsageSpaceStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usageSpaceStatus = null,
  }) {
    return _then(_SpaceUsageStatusResponse(
      usageSpaceStatus: null == usageSpaceStatus
          ? _self._usageSpaceStatus
          : usageSpaceStatus // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

// dart format on
