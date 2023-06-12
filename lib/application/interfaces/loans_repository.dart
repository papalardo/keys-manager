import 'package:keys_manager/domain/entities/loan.dart';
import 'package:keys_manager/support/result_state.dart';

abstract class ILoansRepository {
  Future<ResultState<List<Loan>>> fetchLoans();

  Future<void> create(Loan loan);
}
