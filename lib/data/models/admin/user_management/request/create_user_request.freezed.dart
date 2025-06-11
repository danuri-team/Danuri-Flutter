// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserRequest {
  String get companyId;
  String get name;
  SexType get sex;
  String get age;
  String get phone;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      _$CreateUserRequestCopyWithImpl<CreateUserRequest>(
          this as CreateUserRequest, _$identity);

  /// Serializes this CreateUserRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserRequest &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyId, name, sex, age, phone);

  @override
  String toString() {
    return 'CreateUserRequest(companyId: $companyId, name: $name, sex: $sex, age: $age, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) _then) =
      _$CreateUserRequestCopyWithImpl;
  @useResult
  $Res call(
      {String companyId, String name, SexType sex, String age, String phone});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._self, this._then);

  final CreateUserRequest _self;
  final $Res Function(CreateUserRequest) _then;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? name = null,
    Object? sex = null,
    Object? age = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
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
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateUserRequest implements CreateUserRequest {
  _CreateUserRequest(
      {required this.companyId,
      required this.name,
      required this.sex,
      required this.age,
      required this.phone});
  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  @override
  final String companyId;
  @override
  final String name;
  @override
  final SexType sex;
  @override
  final String age;
  @override
  final String phone;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateUserRequestCopyWith<_CreateUserRequest> get copyWith =>
      __$CreateUserRequestCopyWithImpl<_CreateUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateUserRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserRequest &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyId, name, sex, age, phone);

  @override
  String toString() {
    return 'CreateUserRequest(companyId: $companyId, name: $name, sex: $sex, age: $age, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$CreateUserRequestCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$CreateUserRequestCopyWith(
          _CreateUserRequest value, $Res Function(_CreateUserRequest) _then) =
      __$CreateUserRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String companyId, String name, SexType sex, String age, String phone});
}

/// @nodoc
class __$CreateUserRequestCopyWithImpl<$Res>
    implements _$CreateUserRequestCopyWith<$Res> {
  __$CreateUserRequestCopyWithImpl(this._self, this._then);

  final _CreateUserRequest _self;
  final $Res Function(_CreateUserRequest) _then;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companyId = null,
    Object? name = null,
    Object? sex = null,
    Object? age = null,
    Object? phone = null,
  }) {
    return _then(_CreateUserRequest(
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
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
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
