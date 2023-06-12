import 'package:keys_manager/domain/entities/user.dart';
import 'package:keys_manager/support/result_state.dart';

abstract class IUsersRepository {
  Future<ResultState<List<User>>> listAll();

  Future<void> create(User user);
}
