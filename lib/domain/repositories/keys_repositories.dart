import 'package:keys_manager/application/interfaces/keys_repository.dart';
import 'package:keys_manager/domain/entities/key.dart';
import 'package:keys_manager/domain/interfaces/keys_data.dart';
import 'package:keys_manager/support/result_state.dart';

class KeysRepository implements IKeysRepository {
  final IKeysData data;

  const KeysRepository({
    required this.data,
  });

  @override
  Future<ResultState<List<Key>>> listAll() {
    return data.listAll();
  }

  @override
  Future<void> create(Key key) {
    return data.create(key);
  }
}
