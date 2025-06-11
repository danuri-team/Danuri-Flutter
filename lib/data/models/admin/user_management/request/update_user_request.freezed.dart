// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserRequest {
  String get name;
  SexType get sex;
  String get age;
  String get phone;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith =>
      _$UpdateUserRequestCopyWithImpl<UpdateUserRequest>(
          this as UpdateUserRequest, _$identity);

  /// Serializes this UpdateUserRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, sex, age, phone);

  @override
  String toString() {
    return 'UpdateUserRequest(name: $name, sex: $sex, age: $age, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserRequestCopyWith<$Res> {
  factory $UpdateUserRequestCopyWith(
          UpdateUserRequest value, $Res Function(UpdateUserRequest) _then) =
      _$UpdateUserRequestCopyWithImpl;
  @useResult
  $Res call({String name, SexType sex, String age, String phone});
}

/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final UpdateUserRequest _self;
  final $Res Function(UpdateUserRequest) _then;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sex = null,
    Object? age = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
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
class _UpdateUserRequest implements UpdateUserRequest {
  _UpdateUserRequest(
      {required this.name,
      required this.sex,
      required this.age,
      required this.phone});
  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  @override
  final String name;
  @override
  final SexType sex;
  @override
  final String age;
  @override
  final String phone;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith =>
      __$UpdateUserRequestCopyWithImpl<_UpdateUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateUserRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, sex, age, phone);

  @override
  String toString() {
    return 'UpdateUserRequest(name: $name, sex: $sex, age: $age, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserRequestCopyWith<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  factory _$UpdateUserRequestCopyWith(
          _UpdateUserRequest value, $Res Function(_UpdateUserRequest) _then) =
      __$UpdateUserRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, SexType sex, String age, String phone});
}

/// @nodoc
class __$UpdateUserRequestCopyWithImpl<$Res>
    implements _$UpdateUserRequestCopyWith<$Res> {
  __$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final _UpdateUserRequest _self;
  final $Res Function(_UpdateUserRequest) _then;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? sex = null,
    Object? age = null,
    Object? phone = null,
  }) {
    return _then(_UpdateUserRequest(
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
