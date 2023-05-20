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

/// @nodoc
mixin _$Loan {
  bool get refunded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res, Loan>;
  @useResult
  $Res call({bool refunded});
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
    Object? refunded = null,
  }) {
    return _then(_value.copyWith(
      refunded: null == refunded
          ? _value.refunded
          : refunded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$_LoanCopyWith(_$_Loan value, $Res Function(_$_Loan) then) =
      __$$_LoanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool refunded});
}

/// @nodoc
class __$$_LoanCopyWithImpl<$Res> extends _$LoanCopyWithImpl<$Res, _$_Loan>
    implements _$$_LoanCopyWith<$Res> {
  __$$_LoanCopyWithImpl(_$_Loan _value, $Res Function(_$_Loan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refunded = null,
  }) {
    return _then(_$_Loan(
      refunded: null == refunded
          ? _value.refunded
          : refunded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loan implements _Loan {
  const _$_Loan({required this.refunded});

  @override
  final bool refunded;

  @override
  String toString() {
    return 'Loan(refunded: $refunded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loan &&
            (identical(other.refunded, refunded) ||
                other.refunded == refunded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refunded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoanCopyWith<_$_Loan> get copyWith =>
      __$$_LoanCopyWithImpl<_$_Loan>(this, _$identity);
}

abstract class _Loan implements Loan {
  const factory _Loan({required final bool refunded}) = _$_Loan;

  @override
  bool get refunded;
  @override
  @JsonKey(ignore: true)
  _$$_LoanCopyWith<_$_Loan> get copyWith => throw _privateConstructorUsedError;
}
