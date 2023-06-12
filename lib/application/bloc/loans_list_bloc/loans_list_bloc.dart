import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/application/interfaces/loans_repository.dart';
import 'package:keys_manager/domain/entities/loan.dart';
import 'package:keys_manager/support/result_state.dart';

part 'loans_list_bloc.freezed.dart';
part 'loans_list_state.dart';

class LoansListBloc extends Cubit<LoansListState> {
  final ILoansRepository repository;

  LoansListBloc({
    required this.repository,
  }) : super(LoansListState.initial());

  Future<void> load() async {
    emit(state.copyWith(loans: const ResultState.loading()));

    var result = await repository.fetchLoans();

    result.whenOrNull(
      data: (loans) => emit(state.copyWith(loans: ResultState.data(loans))),
      error: (error) => emit(state.copyWith(loans: ResultState.error(error))),
    );
  }
}
