import 'package:keys_manager/domain/entities/key.dart';
import 'package:keys_manager/support/result_state.dart';

abstract class IKeysData {
  Future<ResultState<List<Key>>> listAll();

  Future<void> create(Key user);
}
