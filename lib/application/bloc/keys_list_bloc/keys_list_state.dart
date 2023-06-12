part of 'keys_list_bloc.dart';

@freezed
class KeysListState with _$KeysListState {
  const factory KeysListState({
    required ResultState<List<Key>> result,
  }) = _KeysListState;

  factory KeysListState.initial() {
    return const KeysListState(result: ResultState.idle());
  }
}
