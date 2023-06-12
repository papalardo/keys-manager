import 'package:keys_manager/domain/entities/key.dart';
import 'package:keys_manager/domain/interfaces/keys_data.dart';
import 'package:keys_manager/infra/database/database.dart';
import 'package:keys_manager/support/result_state.dart';

class KeysData implements IKeysData {
  @override
  Future<ResultState<List<Key>>> listAll() async {
    final database = await Database.instance.database;

    List<Key> keys = await database
        .rawQuery("SELECT * FROM keys")
        .then((result) => List.from(result.map((entry) => Key.fromJson(entry))));

    return ResultState.data(keys);
  }

  @override
  Future<void> create(Key key) async {
    final database = await Database.instance.database;

    await database.insert('keys', key.toJson());
  }
}
