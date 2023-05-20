// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoanEvent value) $default, {
    required TResult Function(FetchAllLoansEvent value) fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoanEvent value)? $default, {
    TResult? Function(FetchAllLoansEvent value)? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoanEvent value)? $default, {
    TResult Function(FetchAllLoansEvent value)? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanEventCopyWith<$Res> {
  factory $LoanEventCopyWith(LoanEvent value, $Res Function(LoanEvent) then) =
      _$LoanEventCopyWithImpl<$Res, LoanEvent>;
}

/// @nodoc
class _$LoanEventCopyWithImpl<$Res, $Val extends LoanEvent>
    implements $LoanEventCopyWith<$Res> {
  _$LoanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoanEventCopyWith<$Res> {
  factory _$$_LoanEventCopyWith(
          _$_LoanEvent value, $Res Function(_$_LoanEvent) then) =
      __$$_LoanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoanEventCopyWithImpl<$Res>
    extends _$LoanEventCopyWithImpl<$Res, _$_LoanEvent>
    implements _$$_LoanEventCopyWith<$Res> {
  __$$_LoanEventCopyWithImpl(
      _$_LoanEvent _value, $Res Function(_$_LoanEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoanEvent implements _LoanEvent {
  const _$_LoanEvent();

  @override
  String toString() {
    return 'LoanEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() fetchAll,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? fetchAll,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoanEvent value) $default, {
    required TResult Function(FetchAllLoansEvent value) fetchAll,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoanEvent value)? $default, {
    TResult? Function(FetchAllLoansEvent value)? fetchAll,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoanEvent value)? $default, {
    TResult Function(FetchAllLoansEvent value)? fetchAll,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LoanEvent implements LoanEvent {
  const factory _LoanEvent() = _$_LoanEvent;
}

/// @nodoc
abstract class _$$FetchAllLoansEventCopyWith<$Res> {
  factory _$$FetchAllLoansEventCopyWith(_$FetchAllLoansEvent value,
          $Res Function(_$FetchAllLoansEvent) then) =
      __$$FetchAllLoansEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllLoansEventCopyWithImpl<$Res>
    extends _$LoanEventCopyWithImpl<$Res, _$FetchAllLoansEvent>
    implements _$$FetchAllLoansEventCopyWith<$Res> {
  __$$FetchAllLoansEventCopyWithImpl(
      _$FetchAllLoansEvent _value, $Res Function(_$FetchAllLoansEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllLoansEvent implements FetchAllLoansEvent {
  const _$FetchAllLoansEvent();

  @override
  String toString() {
    return 'LoanEvent.fetchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllLoansEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() fetchAll,
  }) {
    return fetchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? fetchAll,
  }) {
    return fetchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoanEvent value) $default, {
    required TResult Function(FetchAllLoansEvent value) fetchAll,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoanEvent value)? $default, {
    TResult? Function(FetchAllLoansEvent value)? fetchAll,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoanEvent value)? $default, {
    TResult Function(FetchAllLoansEvent value)? fetchAll,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class FetchAllLoansEvent implements LoanEvent {
  const factory FetchAllLoansEvent() = _$FetchAllLoansEvent;
}

/// @nodoc
mixin _$LoanState {
  ResultState<List<Loan>> get loans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanStateCopyWith<LoanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanStateCopyWith<$Res> {
  factory $LoanStateCopyWith(LoanState value, $Res Function(LoanState) then) =
      _$LoanStateCopyWithImpl<$Res, LoanState>;
  @useResult
  $Res call({ResultState<List<Loan>> loans});

  $ResultStateCopyWith<List<Loan>, $Res> get loans;
}

/// @nodoc
class _$LoanStateCopyWithImpl<$Res, $Val extends LoanState>
    implements $LoanStateCopyWith<$Res> {
  _$LoanStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_LoanStateCopyWith<$Res> implements $LoanStateCopyWith<$Res> {
  factory _$$_LoanStateCopyWith(
          _$_LoanState value, $Res Function(_$_LoanState) then) =
      __$$_LoanStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultState<List<Loan>> loans});

  @override
  $ResultStateCopyWith<List<Loan>, $Res> get loans;
}

/// @nodoc
class __$$_LoanStateCopyWithImpl<$Res>
    extends _$LoanStateCopyWithImpl<$Res, _$_LoanState>
    implements _$$_LoanStateCopyWith<$Res> {
  __$$_LoanStateCopyWithImpl(
      _$_LoanState _value, $Res Function(_$_LoanState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loans = null,
  }) {
    return _then(_$_LoanState(
      loans: null == loans
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Loan>>,
    ));
  }
}

/// @nodoc

class _$_LoanState implements _LoanState {
  const _$_LoanState({required this.loans});

  @override
  final ResultState<List<Loan>> loans;

  @override
  String toString() {
    return 'LoanState(loans: $loans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanState &&
            (identical(other.loans, loans) || other.loans == loans));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loans);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoanStateCopyWith<_$_LoanState> get copyWith =>
      __$$_LoanStateCopyWithImpl<_$_LoanState>(this, _$identity);
}

abstract class _LoanState implements LoanState {
  const factory _LoanState({required final ResultState<List<Loan>> loans}) =
      _$_LoanState;

  @override
  ResultState<List<Loan>> get loans;
  @override
  @JsonKey(ignore: true)
  _$$_LoanStateCopyWith<_$_LoanState> get copyWith =>
      throw _privateConstructorUsedError;
}
