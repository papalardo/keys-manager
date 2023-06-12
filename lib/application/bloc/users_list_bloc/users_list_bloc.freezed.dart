// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersListState {
  ResultState<List<User>> get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersListStateCopyWith<UsersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListStateCopyWith<$Res> {
  factory $UsersListStateCopyWith(
          UsersListState value, $Res Function(UsersListState) then) =
      _$UsersListStateCopyWithImpl<$Res, UsersListState>;
  @useResult
  $Res call({ResultState<List<User>> result});

  $ResultStateCopyWith<List<User>, $Res> get result;
}

/// @nodoc
class _$UsersListStateCopyWithImpl<$Res, $Val extends UsersListState>
    implements $UsersListStateCopyWith<$Res> {
  _$UsersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultState<List<User>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<User>, $Res> get result {
    return $ResultStateCopyWith<List<User>, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UsersListStateCopyWith<$Res>
    implements $UsersListStateCopyWith<$Res> {
  factory _$$_UsersListStateCopyWith(
          _$_UsersListState value, $Res Function(_$_UsersListState) then) =
      __$$_UsersListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultState<List<User>> result});

  @override
  $ResultStateCopyWith<List<User>, $Res> get result;
}

/// @nodoc
class __$$_UsersListStateCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$_UsersListState>
    implements _$$_UsersListStateCopyWith<$Res> {
  __$$_UsersListStateCopyWithImpl(
      _$_UsersListState _value, $Res Function(_$_UsersListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_UsersListState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultState<List<User>>,
    ));
  }
}

/// @nodoc

class _$_UsersListState implements _UsersListState {
  const _$_UsersListState({required this.result});

  @override
  final ResultState<List<User>> result;

  @override
  String toString() {
    return 'UsersListState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersListState &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersListStateCopyWith<_$_UsersListState> get copyWith =>
      __$$_UsersListStateCopyWithImpl<_$_UsersListState>(this, _$identity);
}

abstract class _UsersListState implements UsersListState {
  const factory _UsersListState(
      {required final ResultState<List<User>> result}) = _$_UsersListState;

  @override
  ResultState<List<User>> get result;
  @override
  @JsonKey(ignore: true)
  _$$_UsersListStateCopyWith<_$_UsersListState> get copyWith =>
      throw _privateConstructorUsedError;
}
