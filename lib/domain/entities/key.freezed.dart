// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Key _$KeyFromJson(Map<String, dynamic> json) {
  return _Key.fromJson(json);
}

/// @nodoc
mixin _$Key {
  int? get id => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyCopyWith<Key> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyCopyWith<$Res> {
  factory $KeyCopyWith(Key value, $Res Function(Key) then) =
      _$KeyCopyWithImpl<$Res, Key>;
  @useResult
  $Res call({int? id, String place});
}

/// @nodoc
class _$KeyCopyWithImpl<$Res, $Val extends Key> implements $KeyCopyWith<$Res> {
  _$KeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeyCopyWith<$Res> implements $KeyCopyWith<$Res> {
  factory _$$_KeyCopyWith(_$_Key value, $Res Function(_$_Key) then) =
      __$$_KeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String place});
}

/// @nodoc
class __$$_KeyCopyWithImpl<$Res> extends _$KeyCopyWithImpl<$Res, _$_Key>
    implements _$$_KeyCopyWith<$Res> {
  __$$_KeyCopyWithImpl(_$_Key _value, $Res Function(_$_Key) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? place = null,
  }) {
    return _then(_$_Key(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Key implements _Key {
  const _$_Key({this.id, required this.place});

  factory _$_Key.fromJson(Map<String, dynamic> json) => _$$_KeyFromJson(json);

  @override
  final int? id;
  @override
  final String place;

  @override
  String toString() {
    return 'Key(id: $id, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Key &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyCopyWith<_$_Key> get copyWith =>
      __$$_KeyCopyWithImpl<_$_Key>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyToJson(
      this,
    );
  }
}

abstract class _Key implements Key {
  const factory _Key({final int? id, required final String place}) = _$_Key;

  factory _Key.fromJson(Map<String, dynamic> json) = _$_Key.fromJson;

  @override
  int? get id;
  @override
  String get place;
  @override
  @JsonKey(ignore: true)
  _$$_KeyCopyWith<_$_Key> get copyWith => throw _privateConstructorUsedError;
}
