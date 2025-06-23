// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpaceResponse {
  String get id;
  String get name;
  List<int> get start_at;
  List<int> get end_at;
  int get usage_count;

  /// Create a copy of SpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceResponseCopyWith<SpaceResponse> get copyWith =>
      _$SpaceResponseCopyWithImpl<SpaceResponse>(
          this as SpaceResponse, _$identity);

  /// Serializes this SpaceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.start_at, start_at) &&
            const DeepCollectionEquality().equals(other.end_at, end_at) &&
            (identical(other.usage_count, usage_count) ||
                other.usage_count == usage_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(start_at),
      const DeepCollectionEquality().hash(end_at),
      usage_count);

  @override
  String toString() {
    return 'SpaceResponse(id: $id, name: $name, start_at: $start_at, end_at: $end_at, usage_count: $usage_count)';
  }
}

/// @nodoc
abstract mixin class $SpaceResponseCopyWith<$Res> {
  factory $SpaceResponseCopyWith(
          SpaceResponse value, $Res Function(SpaceResponse) _then) =
      _$SpaceResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      List<int> start_at,
      List<int> end_at,
      int usage_count});
}

/// @nodoc
class _$SpaceResponseCopyWithImpl<$Res>
    implements $SpaceResponseCopyWith<$Res> {
  _$SpaceResponseCopyWithImpl(this._self, this._then);

  final SpaceResponse _self;
  final $Res Function(SpaceResponse) _then;

  /// Create a copy of SpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? start_at = null,
    Object? end_at = null,
    Object? usage_count = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      usage_count: null == usage_count
          ? _self.usage_count
          : usage_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceResponse implements SpaceResponse {
  _SpaceResponse(
      {required this.id,
      required this.name,
      required final List<int> start_at,
      required final List<int> end_at,
      required this.usage_count})
      : _start_at = start_at,
        _end_at = end_at;
  factory _SpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceResponseFromJson(json);

  @override
  final String id;
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
  final int usage_count;

  /// Create a copy of SpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceResponseCopyWith<_SpaceResponse> get copyWith =>
      __$SpaceResponseCopyWithImpl<_SpaceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._start_at, _start_at) &&
            const DeepCollectionEquality().equals(other._end_at, _end_at) &&
            (identical(other.usage_count, usage_count) ||
                other.usage_count == usage_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_start_at),
      const DeepCollectionEquality().hash(_end_at),
      usage_count);

  @override
  String toString() {
    return 'SpaceResponse(id: $id, name: $name, start_at: $start_at, end_at: $end_at, usage_count: $usage_count)';
  }
}

/// @nodoc
abstract mixin class _$SpaceResponseCopyWith<$Res>
    implements $SpaceResponseCopyWith<$Res> {
  factory _$SpaceResponseCopyWith(
          _SpaceResponse value, $Res Function(_SpaceResponse) _then) =
      __$SpaceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<int> start_at,
      List<int> end_at,
      int usage_count});
}

/// @nodoc
class __$SpaceResponseCopyWithImpl<$Res>
    implements _$SpaceResponseCopyWith<$Res> {
  __$SpaceResponseCopyWithImpl(this._self, this._then);

  final _SpaceResponse _self;
  final $Res Function(_SpaceResponse) _then;

  /// Create a copy of SpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? start_at = null,
    Object? end_at = null,
    Object? usage_count = null,
  }) {
    return _then(_SpaceResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      usage_count: null == usage_count
          ? _self.usage_count
          : usage_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
