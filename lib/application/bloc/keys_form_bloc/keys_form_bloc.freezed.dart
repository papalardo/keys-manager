// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keys_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KeysFormState {
  Place get place => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeysFormStateCopyWith<KeysFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeysFormStateCopyWith<$Res> {
  factory $KeysFormStateCopyWith(
          KeysFormState value, $Res Function(KeysFormState) then) =
      _$KeysFormStateCopyWithImpl<$Res, KeysFormState>;
  @useResult
  $Res call({Place place, FormzSubmissionStatus status});
}

/// @nodoc
class _$KeysFormStateCopyWithImpl<$Res, $Val extends KeysFormState>
    implements $KeysFormStateCopyWith<$Res> {
  _$KeysFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeysFormStateCopyWith<$Res>
    implements $KeysFormStateCopyWith<$Res> {
  factory _$$_KeysFormStateCopyWith(
          _$_KeysFormState value, $Res Function(_$_KeysFormState) then) =
      __$$_KeysFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Place place, FormzSubmissionStatus status});
}

/// @nodoc
class __$$_KeysFormStateCopyWithImpl<$Res>
    extends _$KeysFormStateCopyWithImpl<$Res, _$_KeysFormState>
    implements _$$_KeysFormStateCopyWith<$Res> {
  __$$_KeysFormStateCopyWithImpl(
      _$_KeysFormState _value, $Res Function(_$_KeysFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? status = null,
  }) {
    return _then(_$_KeysFormState(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$_KeysFormState extends _KeysFormState {
  const _$_KeysFormState({required this.place, required this.status})
      : super._();

  @override
  final Place place;
  @override
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'KeysFormState(place: $place, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeysFormState &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeysFormStateCopyWith<_$_KeysFormState> get copyWith =>
      __$$_KeysFormStateCopyWithImpl<_$_KeysFormState>(this, _$identity);
}

abstract class _KeysFormState extends KeysFormState {
  const factory _KeysFormState(
      {required final Place place,
      required final FormzSubmissionStatus status}) = _$_KeysFormState;
  const _KeysFormState._() : super._();

  @override
  Place get place;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_KeysFormStateCopyWith<_$_KeysFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
