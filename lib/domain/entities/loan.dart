import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/domain/entities/key.dart';
import 'package:keys_manager/domain/entities/user.dart';

part 'loan.freezed.dart';
part 'loan.g.dart';

@freezed
class Loan with _$Loan {
  const factory Loan({
    @Default(0) int? refunded,
    required int userId,
    required int keyId,
    User? user,
    Key? key,
  }) = _Loan;

  factory Loan.fromJson(Map<String, Object?> json) => _$LoanFromJson(json);
}
