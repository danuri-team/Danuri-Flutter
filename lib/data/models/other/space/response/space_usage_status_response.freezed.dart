// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_usage_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpaceUsageStatusResponse {
  List<SpaceUsageStatus> get spaceUsageStatus;

  /// Create a copy of SpaceUsageStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceUsageStatusResponseCopyWith<SpaceUsageStatusResponse> get copyWith =>
      _$SpaceUsageStatusResponseCopyWithImpl<SpaceUsageStatusResponse>(
          this as SpaceUsageStatusResponse, _$identity);

  /// Serializes this SpaceUsageStatusResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceUsageStatusResponse &&
            const DeepCollectionEquality()
                .equals(other.spaceUsageStatus, spaceUsageStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(spaceUsageStatus));

  @override
  String toString() {
    return 'SpaceUsageStatusResponse(spaceUsageStatus: $spaceUsageStatus)';
  }
}

/// @nodoc
abstract mixin class $SpaceUsageStatusResponseCopyWith<$Res> {
  factory $SpaceUsageStatusResponseCopyWith(SpaceUsageStatusResponse value,
          $Res Function(SpaceUsageStatusResponse) _then) =
      _$SpaceUsageStatusResponseCopyWithImpl;
  @useResult
  $Res call({List<SpaceUsageStatus> spaceUsageStatus});
}

/// @nodoc
class _$SpaceUsageStatusResponseCopyWithImpl<$Res>
    implements $SpaceUsageStatusResponseCopyWith<$Res> {
  _$SpaceUsageStatusResponseCopyWithImpl(this._self, this._then);

  final SpaceUsageStatusResponse _self;
  final $Res Function(SpaceUsageStatusResponse) _then;

  /// Create a copy of SpaceUsageStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spaceUsageStatus = null,
  }) {
    return _then(_self.copyWith(
      spaceUsageStatus: null == spaceUsageStatus
          ? _self.spaceUsageStatus
          : spaceUsageStatus // ignore: cast_nullable_to_non_nullable
              as List<SpaceUsageStatus>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageStatusResponse implements SpaceUsageStatusResponse {
  _SpaceUsageStatusResponse(
      {required final List<SpaceUsageStatus> spaceUsageStatus})
      : _spaceUsageStatus = spaceUsageStatus;
  factory _SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageStatusResponseFromJson(json);

  final List<SpaceUsageStatus> _spaceUsageStatus;
  @override
  List<SpaceUsageStatus> get spaceUsageStatus {
    if (_spaceUsageStatus is EqualUnmodifiableListView)
      return _spaceUsageStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spaceUsageStatus);
  }

  /// Create a copy of SpaceUsageStatusResponse
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
                .equals(other._spaceUsageStatus, _spaceUsageStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spaceUsageStatus));

  @override
  String toString() {
    return 'SpaceUsageStatusResponse(spaceUsageStatus: $spaceUsageStatus)';
  }
}

/// @nodoc
abstract mixin class _$SpaceUsageStatusResponseCopyWith<$Res>
    implements $SpaceUsageStatusResponseCopyWith<$Res> {
  factory _$SpaceUsageStatusResponseCopyWith(_SpaceUsageStatusResponse value,
          $Res Function(_SpaceUsageStatusResponse) _then) =
      __$SpaceUsageStatusResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<SpaceUsageStatus> spaceUsageStatus});
}

/// @nodoc
class __$SpaceUsageStatusResponseCopyWithImpl<$Res>
    implements _$SpaceUsageStatusResponseCopyWith<$Res> {
  __$SpaceUsageStatusResponseCopyWithImpl(this._self, this._then);

  final _SpaceUsageStatusResponse _self;
  final $Res Function(_SpaceUsageStatusResponse) _then;

  /// Create a copy of SpaceUsageStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spaceUsageStatus = null,
  }) {
    return _then(_SpaceUsageStatusResponse(
      spaceUsageStatus: null == spaceUsageStatus
          ? _self._spaceUsageStatus
          : spaceUsageStatus // ignore: cast_nullable_to_non_nullable
              as List<SpaceUsageStatus>,
    ));
  }
}

// dart format on
