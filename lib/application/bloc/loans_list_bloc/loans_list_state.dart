part of 'loans_list_bloc.dart';

@freezed
class LoansListState with _$LoansListState {
  const factory LoansListState({
    required ResultState<List<Loan>> loans,
  }) = _LoansListState;

  factory LoansListState.initial() => const LoansListState(
        loans: ResultState.idle(),
      );
}
