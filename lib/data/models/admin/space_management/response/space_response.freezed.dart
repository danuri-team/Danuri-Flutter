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
  String get companyId;
  String get companyName;
  String get name;
  List<int> get startAt;
  List<int> get endAt;
  int get usageCount;

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
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.startAt, startAt) &&
            const DeepCollectionEquality().equals(other.endAt, endAt) &&
            (identical(other.usageCount, usageCount) ||
                other.usageCount == usageCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      companyId,
      companyName,
      name,
      const DeepCollectionEquality().hash(startAt),
      const DeepCollectionEquality().hash(endAt),
      usageCount);

  @override
  String toString() {
    return 'SpaceResponse(id: $id, companyId: $companyId, companyName: $companyName, name: $name, startAt: $startAt, endAt: $endAt, usageCount: $usageCount)';
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
      String companyId,
      String companyName,
      String name,
      List<int> startAt,
      List<int> endAt,
      int usageCount});
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
    Object? companyId = null,
    Object? companyName = null,
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? usageCount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as List<int>,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as List<int>,
      usageCount: null == usageCount
          ? _self.usageCount
          : usageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceResponse implements SpaceResponse {
  _SpaceResponse(
      {required this.id,
      required this.companyId,
      required this.companyName,
      required this.name,
      required final List<int> startAt,
      required final List<int> endAt,
      required this.usageCount})
      : _startAt = startAt,
        _endAt = endAt;
  factory _SpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceResponseFromJson(json);

  @override
  final String id;
  @override
  final String companyId;
  @override
  final String companyName;
  @override
  final String name;
  final List<int> _startAt;
  @override
  List<int> get startAt {
    if (_startAt is EqualUnmodifiableListView) return _startAt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_startAt);
  }

  final List<int> _endAt;
  @override
  List<int> get endAt {
    if (_endAt is EqualUnmodifiableListView) return _endAt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_endAt);
  }

  @override
  final int usageCount;

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
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._startAt, _startAt) &&
            const DeepCollectionEquality().equals(other._endAt, _endAt) &&
            (identical(other.usageCount, usageCount) ||
                other.usageCount == usageCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      companyId,
      companyName,
      name,
      const DeepCollectionEquality().hash(_startAt),
      const DeepCollectionEquality().hash(_endAt),
      usageCount);

  @override
  String toString() {
    return 'SpaceResponse(id: $id, companyId: $companyId, companyName: $companyName, name: $name, startAt: $startAt, endAt: $endAt, usageCount: $usageCount)';
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
      String companyId,
      String companyName,
      String name,
      List<int> startAt,
      List<int> endAt,
      int usageCount});
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
    Object? companyId = null,
    Object? companyName = null,
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? usageCount = null,
  }) {
    return _then(_SpaceResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _self._startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as List<int>,
      endAt: null == endAt
          ? _self._endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as List<int>,
      usageCount: null == usageCount
          ? _self.usageCount
          : usageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
