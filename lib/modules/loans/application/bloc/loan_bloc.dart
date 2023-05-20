import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/entities/loan.dart';
import 'package:keys_manager/modules/loans/application/interfaces/loans_repository.dart';
import 'package:keys_manager/support/result_state.dart';

part 'loan_bloc.freezed.dart';
part 'loan_event.dart';
part 'loan_state.dart';

class LoanBloc extends Bloc<LoanEvent, LoanState> {
  final ILoansRepository repository;

  LoanBloc({
    required this.repository,
  }) : super(LoanState.initial()) {
    on<FetchAllLoansEvent>(_fetchAllLoansHandler);
  }

  void _fetchAllLoansHandler(FetchAllLoansEvent event, Emitter<LoanState> emit) async {
    var result = await repository.fetchLoans();

    result.whenOrNull(
      data: (loans) => emit(state.copyWith(loans: ResultState.data(loans))),
      error: (error) => emit(state.copyWith(loans: ResultState.error(error))),
    );
  }
}
