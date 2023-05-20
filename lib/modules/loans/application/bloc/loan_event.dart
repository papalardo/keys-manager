part of 'loan_bloc.dart';

@freezed
class LoanEvent with _$LoanEvent {
  const factory LoanEvent() = _LoanEvent;

  const factory LoanEvent.fetchAll() = FetchAllLoansEvent;
}
