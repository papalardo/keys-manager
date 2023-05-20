import 'package:keys_manager/entities/loan.dart';
import 'package:keys_manager/modules/loans/application/interfaces/loans_repository.dart';
import 'package:keys_manager/modules/loans/domain/interfaces/loans_data.dart';
import 'package:keys_manager/support/result_state.dart';

class LoansRepository implements ILoansRepository {
  final ILoansData data;

  LoansRepository({
    required this.data,
  });

  @override
  Future<ResultState<List<Loan>>> fetchLoans() {
    return data.fetchLoans();
  }
}
