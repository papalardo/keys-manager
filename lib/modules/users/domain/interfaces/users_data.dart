import 'package:keys_manager/entities/user.dart';
import 'package:keys_manager/support/result_state.dart';

abstract class IUsersData {
  Future<ResultState<List<User>>> listAll();
}
