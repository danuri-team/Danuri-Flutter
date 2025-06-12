// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_usage_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpaceUsageStatus {
  String get id;
  String get name;
  List<int> get startAt;
  List<int> get endAt;

  /// Create a copy of SpaceUsageStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceUsageStatusCopyWith<SpaceUsageStatus> get copyWith =>
      _$SpaceUsageStatusCopyWithImpl<SpaceUsageStatus>(
          this as SpaceUsageStatus, _$identity);

  /// Serializes this SpaceUsageStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceUsageStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.startAt, startAt) &&
            const DeepCollectionEquality().equals(other.endAt, endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(startAt),
      const DeepCollectionEquality().hash(endAt));

  @override
  String toString() {
    return 'SpaceUsageStatus(id: $id, name: $name, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $SpaceUsageStatusCopyWith<$Res> {
  factory $SpaceUsageStatusCopyWith(
          SpaceUsageStatus value, $Res Function(SpaceUsageStatus) _then) =
      _$SpaceUsageStatusCopyWithImpl;
  @useResult
  $Res call({String id, String name, List<int> startAt, List<int> endAt});
}

/// @nodoc
class _$SpaceUsageStatusCopyWithImpl<$Res>
    implements $SpaceUsageStatusCopyWith<$Res> {
  _$SpaceUsageStatusCopyWithImpl(this._self, this._then);

  final SpaceUsageStatus _self;
  final $Res Function(SpaceUsageStatus) _then;

  /// Create a copy of SpaceUsageStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
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
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as List<int>,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageStatus implements SpaceUsageStatus {
  _SpaceUsageStatus(
      {required this.id,
      required this.name,
      required final List<int> startAt,
      required final List<int> endAt})
      : _startAt = startAt,
        _endAt = endAt;
  factory _SpaceUsageStatus.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageStatusFromJson(json);

  @override
  final String id;
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

  /// Create a copy of SpaceUsageStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceUsageStatusCopyWith<_SpaceUsageStatus> get copyWith =>
      __$SpaceUsageStatusCopyWithImpl<_SpaceUsageStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceUsageStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceUsageStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._startAt, _startAt) &&
            const DeepCollectionEquality().equals(other._endAt, _endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_startAt),
      const DeepCollectionEquality().hash(_endAt));

  @override
  String toString() {
    return 'SpaceUsageStatus(id: $id, name: $name, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$SpaceUsageStatusCopyWith<$Res>
    implements $SpaceUsageStatusCopyWith<$Res> {
  factory _$SpaceUsageStatusCopyWith(
          _SpaceUsageStatus value, $Res Function(_SpaceUsageStatus) _then) =
      __$SpaceUsageStatusCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, List<int> startAt, List<int> endAt});
}

/// @nodoc
class __$SpaceUsageStatusCopyWithImpl<$Res>
    implements _$SpaceUsageStatusCopyWith<$Res> {
  __$SpaceUsageStatusCopyWithImpl(this._self, this._then);

  final _SpaceUsageStatus _self;
  final $Res Function(_SpaceUsageStatus) _then;

  /// Create a copy of SpaceUsageStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_SpaceUsageStatus(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

// dart format on
