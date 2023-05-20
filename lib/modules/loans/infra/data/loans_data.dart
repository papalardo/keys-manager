import 'package:keys_manager/entities/loan.dart';
import 'package:keys_manager/modules/loans/domain/interfaces/loans_data.dart';
import 'package:keys_manager/support/result_state.dart';

class LoansData implements ILoansData {
  @override
  Future<ResultState<List<Loan>>> fetchLoans() async {
    await Future.delayed(const Duration(seconds: 2));

    return const ResultState.data([
      Loan(refunded: true),
    ]);
  }
}
