import 'package:keys_manager/entities/user.dart';
import 'package:keys_manager/modules/users/domain/interfaces/users_data.dart';
import 'package:keys_manager/support/result_state.dart';

class UsersData implements IUsersData {
  @override
  Future<ResultState<List<User>>> listAll() async {
    await Future.delayed(const Duration(seconds: 2));

    return const ResultState.data([
      User(id: '1', name: 'Usuário 1', phone: '999999'),
      User(id: '2', name: 'Usuário 2', phone: '999999'),
      User(id: '3', name: 'Usuário 3', phone: '999999'),
      User(id: '4', name: 'Usuário 4', phone: '999999'),
      User(id: '5', name: 'Usuário 5', phone: '999999'),
    ]);
  }
}
