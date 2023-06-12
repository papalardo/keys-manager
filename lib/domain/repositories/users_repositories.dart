import 'package:keys_manager/application/interfaces/users_repository.dart';
import 'package:keys_manager/domain/entities/user.dart';
import 'package:keys_manager/domain/interfaces/users_data.dart';
import 'package:keys_manager/support/result_state.dart';

class UsersRepository implements IUsersRepository {
  final IUsersData data;

  const UsersRepository({
    required this.data,
  });

  @override
  Future<ResultState<List<User>>> listAll() {
    return data.listAll();
  }

  @override
  Future<void> create(User user) {
    return data.create(user);
  }
}
