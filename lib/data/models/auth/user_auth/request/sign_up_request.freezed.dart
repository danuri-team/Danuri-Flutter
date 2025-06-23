// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequest {
  String get company_id;
  String get name;
  String get phone;
  SexType get sex;
  AgeType get age;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      _$SignUpRequestCopyWithImpl<SignUpRequest>(
          this as SignUpRequest, _$identity);

  /// Serializes this SignUpRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpRequest &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, company_id, name, phone, sex, age);

  @override
  String toString() {
    return 'SignUpRequest(company_id: $company_id, name: $name, phone: $phone, sex: $sex, age: $age)';
  }
}

/// @nodoc
abstract mixin class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) _then) =
      _$SignUpRequestCopyWithImpl;
  @useResult
  $Res call(
      {String company_id, String name, String phone, SexType sex, AgeType age});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._self, this._then);

  final SignUpRequest _self;
  final $Res Function(SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company_id = null,
    Object? name = null,
    Object? phone = null,
    Object? sex = null,
    Object? age = null,
  }) {
    return _then(_self.copyWith(
      company_id: null == company_id
          ? _self.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as SexType,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as AgeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignUpRequest implements SignUpRequest {
  _SignUpRequest(
      {required this.company_id,
      required this.name,
      required this.phone,
      required this.sex,
      required this.age});
  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  @override
  final String company_id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final SexType sex;
  @override
  final AgeType age;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpRequest &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, company_id, name, phone, sex, age);

  @override
  String toString() {
    return 'SignUpRequest(company_id: $company_id, name: $name, phone: $phone, sex: $sex, age: $age)';
  }
}

/// @nodoc
abstract mixin class _$SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(
          _SignUpRequest value, $Res Function(_SignUpRequest) _then) =
      __$SignUpRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String company_id, String name, String phone, SexType sex, AgeType age});
}

/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(this._self, this._then);

  final _SignUpRequest _self;
  final $Res Function(_SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? company_id = null,
    Object? name = null,
    Object? phone = null,
    Object? sex = null,
    Object? age = null,
  }) {
    return _then(_SignUpRequest(
      company_id: null == company_id
          ? _self.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as SexType,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as AgeType,
    ));
  }
}

// dart format on
