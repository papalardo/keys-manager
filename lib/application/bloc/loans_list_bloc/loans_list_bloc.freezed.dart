// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loans_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoansListState {
  ResultState<List<Loan>> get loans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoansListStateCopyWith<LoansListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoansListStateCopyWith<$Res> {
  factory $LoansListStateCopyWith(
          LoansListState value, $Res Function(LoansListState) then) =
      _$LoansListStateCopyWithImpl<$Res, LoansListState>;
  @useResult
  $Res call({ResultState<List<Loan>> loans});

  $ResultStateCopyWith<List<Loan>, $Res> get loans;
}

/// @nodoc
class _$LoansListStateCopyWithImpl<$Res, $Val extends LoansListState>
    implements $LoansListStateCopyWith<$Res> {
  _$LoansListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loans = null,
  }) {
    return _then(_value.copyWith(
      loans: null == loans
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Loan>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<Loan>, $Res> get loans {
    return $ResultStateCopyWith<List<Loan>, $Res>(_value.loans, (value) {
      return _then(_value.copyWith(loans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoansListStateCopyWith<$Res>
    implements $LoansListStateCopyWith<$Res> {
  factory _$$_LoansListStateCopyWith(
          _$_LoansListState value, $Res Function(_$_LoansListState) then) =
      __$$_LoansListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultState<List<Loan>> loans});

  @override
  $ResultStateCopyWith<List<Loan>, $Res> get loans;
}

/// @nodoc
class __$$_LoansListStateCopyWithImpl<$Res>
    extends _$LoansListStateCopyWithImpl<$Res, _$_LoansListState>
    implements _$$_LoansListStateCopyWith<$Res> {
  __$$_LoansListStateCopyWithImpl(
      _$_LoansListState _value, $Res Function(_$_LoansListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loans = null,
  }) {
    return _then(_$_LoansListState(
      loans: null == loans
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Loan>>,
    ));
  }
}

/// @nodoc

class _$_LoansListState implements _LoansListState {
  const _$_LoansListState({required this.loans});

  @override
  final ResultState<List<Loan>> loans;

  @override
  String toString() {
    return 'LoansListState(loans: $loans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoansListState &&
            (identical(other.loans, loans) || other.loans == loans));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loans);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoansListStateCopyWith<_$_LoansListState> get copyWith =>
      __$$_LoansListStateCopyWithImpl<_$_LoansListState>(this, _$identity);
}

abstract class _LoansListState implements LoansListState {
  const factory _LoansListState(
      {required final ResultState<List<Loan>> loans}) = _$_LoansListState;

  @override
  ResultState<List<Loan>> get loans;
  @override
  @JsonKey(ignore: true)
  _$$_LoansListStateCopyWith<_$_LoansListState> get copyWith =>
      throw _privateConstructorUsedError;
}
