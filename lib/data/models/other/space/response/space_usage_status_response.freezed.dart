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
  String get space_id;
  String get name;
  List<int> get start_at;
  List<int> get end_at;
  bool get is_available;

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
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.start_at, start_at) &&
            const DeepCollectionEquality().equals(other.end_at, end_at) &&
            (identical(other.is_available, is_available) ||
                other.is_available == is_available));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      space_id,
      name,
      const DeepCollectionEquality().hash(start_at),
      const DeepCollectionEquality().hash(end_at),
      is_available);

  @override
  String toString() {
    return 'SpaceUsageStatusResponse(space_id: $space_id, name: $name, start_at: $start_at, end_at: $end_at, is_available: $is_available)';
  }
}

/// @nodoc
abstract mixin class $SpaceUsageStatusResponseCopyWith<$Res> {
  factory $SpaceUsageStatusResponseCopyWith(SpaceUsageStatusResponse value,
          $Res Function(SpaceUsageStatusResponse) _then) =
      _$SpaceUsageStatusResponseCopyWithImpl;
  @useResult
  $Res call(
      {String space_id,
      String name,
      List<int> start_at,
      List<int> end_at,
      bool is_available});
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
    Object? space_id = null,
    Object? name = null,
    Object? start_at = null,
    Object? end_at = null,
    Object? is_available = null,
  }) {
    return _then(_self.copyWith(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as List<int>,
      end_at: null == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as List<int>,
      is_available: null == is_available
          ? _self.is_available
          : is_available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageStatusResponse implements SpaceUsageStatusResponse {
  _SpaceUsageStatusResponse(
      {required this.space_id,
      required this.name,
      required final List<int> start_at,
      required final List<int> end_at,
      required this.is_available})
      : _start_at = start_at,
        _end_at = end_at;
  factory _SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageStatusResponseFromJson(json);

  @override
  final String space_id;
  @override
  final String name;
  final List<int> _start_at;
  @override
  List<int> get start_at {
    if (_start_at is EqualUnmodifiableListView) return _start_at;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_start_at);
  }

  final List<int> _end_at;
  @override
  List<int> get end_at {
    if (_end_at is EqualUnmodifiableListView) return _end_at;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_end_at);
  }

  @override
  final bool is_available;

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
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._start_at, _start_at) &&
            const DeepCollectionEquality().equals(other._end_at, _end_at) &&
            (identical(other.is_available, is_available) ||
                other.is_available == is_available));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      space_id,
      name,
      const DeepCollectionEquality().hash(_start_at),
      const DeepCollectionEquality().hash(_end_at),
      is_available);

  @override
  String toString() {
    return 'SpaceUsageStatusResponse(space_id: $space_id, name: $name, start_at: $start_at, end_at: $end_at, is_available: $is_available)';
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
  $Res call(
      {String space_id,
      String name,
      List<int> start_at,
      List<int> end_at,
      bool is_available});
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
    Object? space_id = null,
    Object? name = null,
    Object? start_at = null,
    Object? end_at = null,
    Object? is_available = null,
  }) {
    return _then(_SpaceUsageStatusResponse(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start_at: null == start_at
          ? _self._start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as List<int>,
      end_at: null == end_at
          ? _self._end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as List<int>,
      is_available: null == is_available
          ? _self.is_available
          : is_available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
