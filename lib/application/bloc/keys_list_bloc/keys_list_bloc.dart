import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/application/interfaces/keys_repository.dart';
import 'package:keys_manager/domain/entities/key.dart';
import 'package:keys_manager/support/failure.dart';
import 'package:keys_manager/support/result_state.dart';

part 'keys_list_bloc.freezed.dart';
part 'keys_list_state.dart';

class KeysListBloc extends Cubit<KeysListState> {
  final IKeysRepository repository;

  KeysListBloc({
    required this.repository,
  }) : super(KeysListState.initial());

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
