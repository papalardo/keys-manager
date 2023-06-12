import 'package:keys_manager/domain/entities/loan.dart';
import 'package:keys_manager/domain/interfaces/loans_data.dart';
import 'package:keys_manager/infra/database/database.dart';
import 'package:keys_manager/support/result_state.dart';

class LoansData implements ILoansData {
  @override
  Future<ResultState<List<Loan>>> fetchLoans() async {
    final database = await Database.instance.database;

    var result = await database.rawQuery("SELECT * FROM loans");
    result = await Database.instance.mergeRelated(result, 'users', 'userId', 'id', 'user');
    result = await Database.instance.mergeRelated(result, 'keys', 'keyId', 'id', 'key');

    var loans = List<Loan>.from(result.map((entry) => Loan.fromJson(entry)));

    return ResultState.data(loans);
  }

  @override
  Future<void> create(Loan loan) async {
    final database = await Database.instance.database;

    var payload = loan.toJson();
    payload.remove('user');
    payload.remove('key');

    database.insert('loans', payload);
  }
}
