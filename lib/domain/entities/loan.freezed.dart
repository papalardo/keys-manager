// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Loan _$LoanFromJson(Map<String, dynamic> json) {
  return _Loan.fromJson(json);
}

/// @nodoc
mixin _$Loan {
  int? get refunded => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get keyId => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Key? get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res, Loan>;
  @useResult
  $Res call({int? refunded, int userId, int keyId, User? user, Key? key});

  $UserCopyWith<$Res>? get user;
  $KeyCopyWith<$Res>? get key;
}

/// @nodoc
class _$LoanCopyWithImpl<$Res, $Val extends Loan>
    implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refunded = freezed,
    Object? userId = null,
    Object? keyId = null,
    Object? user = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      refunded: freezed == refunded
          ? _value.refunded
          : refunded // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $KeyCopyWith<$Res>? get key {
    if (_value.key == null) {
      return null;
    }

    return $KeyCopyWith<$Res>(_value.key!, (value) {
      return _then(_value.copyWith(key: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$_LoanCopyWith(_$_Loan value, $Res Function(_$_Loan) then) =
      __$$_LoanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? refunded, int userId, int keyId, User? user, Key? key});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $KeyCopyWith<$Res>? get key;
}

/// @nodoc
class __$$_LoanCopyWithImpl<$Res> extends _$LoanCopyWithImpl<$Res, _$_Loan>
    implements _$$_LoanCopyWith<$Res> {
  __$$_LoanCopyWithImpl(_$_Loan _value, $Res Function(_$_Loan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refunded = freezed,
    Object? userId = null,
    Object? keyId = null,
    Object? user = freezed,
    Object? key = freezed,
  }) {
    return _then(_$_Loan(
      refunded: freezed == refunded
          ? _value.refunded
          : refunded // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Loan implements _Loan {
  const _$_Loan(
      {this.refunded = 0,
      required this.userId,
      required this.keyId,
      this.user,
      this.key});

  factory _$_Loan.fromJson(Map<String, dynamic> json) => _$$_LoanFromJson(json);

  @override
  @JsonKey()
  final int? refunded;
  @override
  final int userId;
  @override
  final int keyId;
  @override
  final User? user;
  @override
  final Key? key;

  @override
  String toString() {
    return 'Loan(refunded: $refunded, userId: $userId, keyId: $keyId, user: $user, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loan &&
            (identical(other.refunded, refunded) ||
                other.refunded == refunded) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.keyId, keyId) || other.keyId == keyId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, refunded, userId, keyId, user, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoanCopyWith<_$_Loan> get copyWith =>
      __$$_LoanCopyWithImpl<_$_Loan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanToJson(
      this,
    );
  }
}

abstract class _Loan implements Loan {
  const factory _Loan(
      {final int? refunded,
      required final int userId,
      required final int keyId,
      final User? user,
      final Key? key}) = _$_Loan;

  factory _Loan.fromJson(Map<String, dynamic> json) = _$_Loan.fromJson;

  @override
  int? get refunded;
  @override
  int get userId;
  @override
  int get keyId;
  @override
  User? get user;
  @override
  Key? get key;
  @override
  @JsonKey(ignore: true)
  _$$_LoanCopyWith<_$_Loan> get copyWith => throw _privateConstructorUsedError;
}
