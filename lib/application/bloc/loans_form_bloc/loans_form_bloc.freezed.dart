// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loans_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoansFormState {
  UserId get userId => throw _privateConstructorUsedError;
  KeyId get keyId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoansFormStateCopyWith<LoansFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoansFormStateCopyWith<$Res> {
  factory $LoansFormStateCopyWith(
          LoansFormState value, $Res Function(LoansFormState) then) =
      _$LoansFormStateCopyWithImpl<$Res, LoansFormState>;
  @useResult
  $Res call({UserId userId, KeyId keyId});
}

/// @nodoc
class _$LoansFormStateCopyWithImpl<$Res, $Val extends LoansFormState>
    implements $LoansFormStateCopyWith<$Res> {
  _$LoansFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? keyId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as KeyId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoansFormStateCopyWith<$Res>
    implements $LoansFormStateCopyWith<$Res> {
  factory _$$_LoansFormStateCopyWith(
          _$_LoansFormState value, $Res Function(_$_LoansFormState) then) =
      __$$_LoansFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserId userId, KeyId keyId});
}

/// @nodoc
class __$$_LoansFormStateCopyWithImpl<$Res>
    extends _$LoansFormStateCopyWithImpl<$Res, _$_LoansFormState>
    implements _$$_LoansFormStateCopyWith<$Res> {
  __$$_LoansFormStateCopyWithImpl(
      _$_LoansFormState _value, $Res Function(_$_LoansFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? keyId = null,
  }) {
    return _then(_$_LoansFormState(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as KeyId,
    ));
  }
}

/// @nodoc

class _$_LoansFormState extends _LoansFormState {
  const _$_LoansFormState({required this.userId, required this.keyId})
      : super._();

  @override
  final UserId userId;
  @override
  final KeyId keyId;

  @override
  String toString() {
    return 'LoansFormState(userId: $userId, keyId: $keyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoansFormState &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.keyId, keyId) || other.keyId == keyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, keyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoansFormStateCopyWith<_$_LoansFormState> get copyWith =>
      __$$_LoansFormStateCopyWithImpl<_$_LoansFormState>(this, _$identity);
}

abstract class _LoansFormState extends LoansFormState {
  const factory _LoansFormState(
      {required final UserId userId,
      required final KeyId keyId}) = _$_LoansFormState;
  const _LoansFormState._() : super._();

  @override
  UserId get userId;
  @override
  KeyId get keyId;
  @override
  @JsonKey(ignore: true)
  _$$_LoansFormStateCopyWith<_$_LoansFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
