import 'package:keys_manager/domain/entities/user.dart';
import 'package:keys_manager/domain/interfaces/users_data.dart';
import 'package:keys_manager/infra/database/database.dart';
import 'package:keys_manager/support/result_state.dart';

class UsersData implements IUsersData {
  @override
  Future<ResultState<List<User>>> listAll() async {
    final database = await Database.instance.database;

    List<User> users = await database
        .rawQuery("SELECT * FROM users")
        .then((result) => List.from(result.map((entry) => User.fromJson(entry))));

    return ResultState.data(users);
  }

  @override
  Future<void> create(User user) async {
    final database = await Database.instance.database;

    await database.insert('users', user.toJson());
    // var box = await Hive.openBox<User>(HiveApp.BOX_USER);
    // await box.put(UniqueKey().toString(), user);
  }
}
