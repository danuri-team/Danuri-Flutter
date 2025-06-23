// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SpaceRequest _$SpaceRequestFromJson(Map<String, dynamic> json) {
  return _SpaceRequestRequest.fromJson(json);
}

/// @nodoc
mixin _$SpaceRequest {
  String get name;
  String get start_at;
  String? get end_at;

  /// Create a copy of SpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceRequestCopyWith<SpaceRequest> get copyWith =>
      _$SpaceRequestCopyWithImpl<SpaceRequest>(
          this as SpaceRequest, _$identity);

  /// Serializes this SpaceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.start_at, start_at) ||
                other.start_at == start_at) &&
            (identical(other.end_at, end_at) || other.end_at == end_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, start_at, end_at);

  @override
  String toString() {
    return 'SpaceRequest(name: $name, start_at: $start_at, end_at: $end_at)';
  }
}

/// @nodoc
abstract mixin class $SpaceRequestCopyWith<$Res> {
  factory $SpaceRequestCopyWith(
          SpaceRequest value, $Res Function(SpaceRequest) _then) =
      _$SpaceRequestCopyWithImpl;
  @useResult
  $Res call({String name, String start_at, String? end_at});
}

/// @nodoc
class _$SpaceRequestCopyWithImpl<$Res> implements $SpaceRequestCopyWith<$Res> {
  _$SpaceRequestCopyWithImpl(this._self, this._then);

  final SpaceRequest _self;
  final $Res Function(SpaceRequest) _then;

  /// Create a copy of SpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? start_at = null,
    Object? end_at = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as String,
      end_at: freezed == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceRequestRequest implements SpaceRequest {
  _SpaceRequestRequest(
      {required this.name, required this.start_at, this.end_at});
  factory _SpaceRequestRequest.fromJson(Map<String, dynamic> json) =>
      _$SpaceRequestRequestFromJson(json);

  @override
  final String name;
  @override
  final String start_at;
  @override
  final String? end_at;

  /// Create a copy of SpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceRequestRequestCopyWith<_SpaceRequestRequest> get copyWith =>
      __$SpaceRequestRequestCopyWithImpl<_SpaceRequestRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceRequestRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceRequestRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.start_at, start_at) ||
                other.start_at == start_at) &&
            (identical(other.end_at, end_at) || other.end_at == end_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, start_at, end_at);

  @override
  String toString() {
    return 'SpaceRequest(name: $name, start_at: $start_at, end_at: $end_at)';
  }
}

/// @nodoc
abstract mixin class _$SpaceRequestRequestCopyWith<$Res>
    implements $SpaceRequestCopyWith<$Res> {
  factory _$SpaceRequestRequestCopyWith(_SpaceRequestRequest value,
          $Res Function(_SpaceRequestRequest) _then) =
      __$SpaceRequestRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String start_at, String? end_at});
}

/// @nodoc
class __$SpaceRequestRequestCopyWithImpl<$Res>
    implements _$SpaceRequestRequestCopyWith<$Res> {
  __$SpaceRequestRequestCopyWithImpl(this._self, this._then);

  final _SpaceRequestRequest _self;
  final $Res Function(_SpaceRequestRequest) _then;

  /// Create a copy of SpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? start_at = null,
    Object? end_at = freezed,
  }) {
    return _then(_SpaceRequestRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as String,
      end_at: freezed == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
