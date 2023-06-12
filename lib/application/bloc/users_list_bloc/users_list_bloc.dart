import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/application/interfaces/users_repository.dart';
import 'package:keys_manager/domain/entities/user.dart';
import 'package:keys_manager/support/failure.dart';
import 'package:keys_manager/support/result_state.dart';

part 'users_list_bloc.freezed.dart';
part 'users_list_state.dart';

class UsersListBloc extends Cubit<UsersListState> {
  final IUsersRepository repository;

  UsersListBloc({
    required this.repository,
  }) : super(UsersListState.initial());

  Future<void> load() async {
    emit(state.copyWith(result: const ResultState.loading()));

    try {
      var result = await repository.listAll();
      emit(state.copyWith(result: result));
    } catch (e) {
      emit(state.copyWith(result: ResultState.error(Failure(e.toString()))));
    }
  }
}
