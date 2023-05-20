import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan.freezed.dart';

@freezed
class Loan with _$Loan {
  const factory Loan({
    required bool refunded,
  }) = _Loan;
}
