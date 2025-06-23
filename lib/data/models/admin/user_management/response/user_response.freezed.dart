// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponse {
  String get id;
  String get name;
  SexType get sex;
  AgeType get age;
  String get phone;
  String get created_at;
  String get updated_at;
  int get usage_count;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<UserResponse> get copyWith =>
      _$UserResponseCopyWithImpl<UserResponse>(
          this as UserResponse, _$identity);

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.usage_count, usage_count) ||
                other.usage_count == usage_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, sex, age, phone,
      created_at, updated_at, usage_count);

  @override
  String toString() {
    return 'UserResponse(id: $id, name: $name, sex: $sex, age: $age, phone: $phone, created_at: $created_at, updated_at: $updated_at, usage_count: $usage_count)';
  }
}

/// @nodoc
abstract mixin class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) _then) =
      _$UserResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      SexType sex,
      AgeType age,
      String phone,
      String created_at,
      String updated_at,
      int usage_count});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._self, this._then);

  final UserResponse _self;
  final $Res Function(UserResponse) _then;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sex = null,
    Object? age = null,
    Object? phone = null,
    Object? created_at = null,
    Object? updated_at = null,
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
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as SexType,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as AgeType,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      usage_count: null == usage_count
          ? _self.usage_count
          : usage_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserResponse implements UserResponse {
  _UserResponse(
      {required this.id,
      required this.name,
      required this.sex,
      required this.age,
      required this.phone,
      required this.created_at,
      required this.updated_at,
      required this.usage_count});
  factory _UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final SexType sex;
  @override
  final AgeType age;
  @override
  final String phone;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final int usage_count;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.usage_count, usage_count) ||
                other.usage_count == usage_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, sex, age, phone,
      created_at, updated_at, usage_count);

  @override
  String toString() {
    return 'UserResponse(id: $id, name: $name, sex: $sex, age: $age, phone: $phone, created_at: $created_at, updated_at: $updated_at, usage_count: $usage_count)';
  }
}

/// @nodoc
abstract mixin class _$UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(
          _UserResponse value, $Res Function(_UserResponse) _then) =
      __$UserResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      SexType sex,
      AgeType age,
      String phone,
      String created_at,
      String updated_at,
      int usage_count});
}

/// @nodoc
class __$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(this._self, this._then);

  final _UserResponse _self;
  final $Res Function(_UserResponse) _then;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sex = null,
    Object? age = null,
    Object? phone = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? usage_count = null,
  }) {
    return _then(_UserResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as SexType,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as AgeType,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      usage_count: null == usage_count
          ? _self.usage_count
          : usage_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
