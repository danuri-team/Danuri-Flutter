// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_admin_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllAdminAccountResponse {
  List<MyInfoResponse> get allAdminAccounts;

  /// Create a copy of AllAdminAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllAdminAccountResponseCopyWith<AllAdminAccountResponse> get copyWith =>
      _$AllAdminAccountResponseCopyWithImpl<AllAdminAccountResponse>(
          this as AllAdminAccountResponse, _$identity);

  /// Serializes this AllAdminAccountResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllAdminAccountResponse &&
            const DeepCollectionEquality()
                .equals(other.allAdminAccounts, allAdminAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(allAdminAccounts));

  @override
  String toString() {
    return 'AllAdminAccountResponse(allAdminAccounts: $allAdminAccounts)';
  }
}

/// @nodoc
abstract mixin class $AllAdminAccountResponseCopyWith<$Res> {
  factory $AllAdminAccountResponseCopyWith(AllAdminAccountResponse value,
          $Res Function(AllAdminAccountResponse) _then) =
      _$AllAdminAccountResponseCopyWithImpl;
  @useResult
  $Res call({List<MyInfoResponse> allAdminAccounts});
}

/// @nodoc
class _$AllAdminAccountResponseCopyWithImpl<$Res>
    implements $AllAdminAccountResponseCopyWith<$Res> {
  _$AllAdminAccountResponseCopyWithImpl(this._self, this._then);

  final AllAdminAccountResponse _self;
  final $Res Function(AllAdminAccountResponse) _then;

  /// Create a copy of AllAdminAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allAdminAccounts = null,
  }) {
    return _then(_self.copyWith(
      allAdminAccounts: null == allAdminAccounts
          ? _self.allAdminAccounts
          : allAdminAccounts // ignore: cast_nullable_to_non_nullable
              as List<MyInfoResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AllAdminAccountResponse implements AllAdminAccountResponse {
  _AllAdminAccountResponse(
      {required final List<MyInfoResponse> allAdminAccounts})
      : _allAdminAccounts = allAdminAccounts;
  factory _AllAdminAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AllAdminAccountResponseFromJson(json);

  final List<MyInfoResponse> _allAdminAccounts;
  @override
  List<MyInfoResponse> get allAdminAccounts {
    if (_allAdminAccounts is EqualUnmodifiableListView)
      return _allAdminAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allAdminAccounts);
  }

  /// Create a copy of AllAdminAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllAdminAccountResponseCopyWith<_AllAdminAccountResponse> get copyWith =>
      __$AllAdminAccountResponseCopyWithImpl<_AllAdminAccountResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllAdminAccountResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllAdminAccountResponse &&
            const DeepCollectionEquality()
                .equals(other._allAdminAccounts, _allAdminAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allAdminAccounts));

  @override
  String toString() {
    return 'AllAdminAccountResponse(allAdminAccounts: $allAdminAccounts)';
  }
}

/// @nodoc
abstract mixin class _$AllAdminAccountResponseCopyWith<$Res>
    implements $AllAdminAccountResponseCopyWith<$Res> {
  factory _$AllAdminAccountResponseCopyWith(_AllAdminAccountResponse value,
          $Res Function(_AllAdminAccountResponse) _then) =
      __$AllAdminAccountResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<MyInfoResponse> allAdminAccounts});
}

/// @nodoc
class __$AllAdminAccountResponseCopyWithImpl<$Res>
    implements _$AllAdminAccountResponseCopyWith<$Res> {
  __$AllAdminAccountResponseCopyWithImpl(this._self, this._then);

  final _AllAdminAccountResponse _self;
  final $Res Function(_AllAdminAccountResponse) _then;

  /// Create a copy of AllAdminAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allAdminAccounts = null,
  }) {
    return _then(_AllAdminAccountResponse(
      allAdminAccounts: null == allAdminAccounts
          ? _self._allAdminAccounts
          : allAdminAccounts // ignore: cast_nullable_to_non_nullable
              as List<MyInfoResponse>,
    ));
  }
}

// dart format on
