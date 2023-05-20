part of 'loan_bloc.dart';

@freezed
class LoanState with _$LoanState {
  const factory LoanState({
    required ResultState<List<Loan>> loans,
  }) = _LoanState;

  factory LoanState.initial() => const LoanState(
        loans: ResultState.idle(),
      );
}
