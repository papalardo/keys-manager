// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keys_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KeysListState {
  ResultState<List<Key>> get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeysListStateCopyWith<KeysListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeysListStateCopyWith<$Res> {
  factory $KeysListStateCopyWith(
          KeysListState value, $Res Function(KeysListState) then) =
      _$KeysListStateCopyWithImpl<$Res, KeysListState>;
  @useResult
  $Res call({ResultState<List<Key>> result});

  $ResultStateCopyWith<List<Key>, $Res> get result;
}

/// @nodoc
class _$KeysListStateCopyWithImpl<$Res, $Val extends KeysListState>
    implements $KeysListStateCopyWith<$Res> {
  _$KeysListStateCopyWithImpl(this._value, this._then);

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
              as ResultState<List<Key>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<Key>, $Res> get result {
    return $ResultStateCopyWith<List<Key>, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KeysListStateCopyWith<$Res>
    implements $KeysListStateCopyWith<$Res> {
  factory _$$_KeysListStateCopyWith(
          _$_KeysListState value, $Res Function(_$_KeysListState) then) =
      __$$_KeysListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultState<List<Key>> result});

  @override
  $ResultStateCopyWith<List<Key>, $Res> get result;
}

/// @nodoc
class __$$_KeysListStateCopyWithImpl<$Res>
    extends _$KeysListStateCopyWithImpl<$Res, _$_KeysListState>
    implements _$$_KeysListStateCopyWith<$Res> {
  __$$_KeysListStateCopyWithImpl(
      _$_KeysListState _value, $Res Function(_$_KeysListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_KeysListState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Key>>,
    ));
  }
}

/// @nodoc

class _$_KeysListState implements _KeysListState {
  const _$_KeysListState({required this.result});

  @override
  final ResultState<List<Key>> result;

  @override
  String toString() {
    return 'KeysListState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeysListState &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeysListStateCopyWith<_$_KeysListState> get copyWith =>
      __$$_KeysListStateCopyWithImpl<_$_KeysListState>(this, _$identity);
}

abstract class _KeysListState implements KeysListState {
  const factory _KeysListState({required final ResultState<List<Key>> result}) =
      _$_KeysListState;

  @override
  ResultState<List<Key>> get result;
  @override
  @JsonKey(ignore: true)
  _$$_KeysListStateCopyWith<_$_KeysListState> get copyWith =>
      throw _privateConstructorUsedError;
}
