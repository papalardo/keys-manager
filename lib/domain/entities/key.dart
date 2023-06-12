import 'package:freezed_annotation/freezed_annotation.dart';

part 'key.freezed.dart';
part 'key.g.dart';

@freezed
class Key with _$Key {
  const factory Key({
    int? id,
    required String place,
  }) = _Key;

  factory Key.fromJson(Map<String, Object?> json) => _$KeyFromJson(json);
}
