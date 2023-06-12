// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFormState {
  Name get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res, UserFormState>;
  @useResult
  $Res call({Name name, Phone phone, FormzSubmissionStatus status});
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res, $Val extends UserFormState>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$$_UserFormStateCopyWith(
          _$_UserFormState value, $Res Function(_$_UserFormState) then) =
      __$$_UserFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Name name, Phone phone, FormzSubmissionStatus status});
}

/// @nodoc
class __$$_UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res, _$_UserFormState>
    implements _$$_UserFormStateCopyWith<$Res> {
  __$$_UserFormStateCopyWithImpl(
      _$_UserFormState _value, $Res Function(_$_UserFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? status = null,
  }) {
    return _then(_$_UserFormState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$_UserFormState extends _UserFormState {
  const _$_UserFormState(
      {required this.name, required this.phone, required this.status})
      : super._();

  @override
  final Name name;
  @override
  final Phone phone;
  @override
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'UserFormState(name: $name, phone: $phone, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFormState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFormStateCopyWith<_$_UserFormState> get copyWith =>
      __$$_UserFormStateCopyWithImpl<_$_UserFormState>(this, _$identity);
}

abstract class _UserFormState extends UserFormState {
  const factory _UserFormState(
      {required final Name name,
      required final Phone phone,
      required final FormzSubmissionStatus status}) = _$_UserFormState;
  const _UserFormState._() : super._();

  @override
  Name get name;
  @override
  Phone get phone;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_UserFormStateCopyWith<_$_UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
