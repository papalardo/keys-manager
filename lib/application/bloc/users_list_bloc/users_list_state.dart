part of 'users_list_bloc.dart';

@freezed
class UsersListState with _$UsersListState {
  const factory UsersListState({
    required ResultState<List<User>> result,
  }) = _UsersListState;

  factory UsersListState.initial() {
    return const UsersListState(result: ResultState.idle());
  }
}
