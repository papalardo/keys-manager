import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/application/interfaces/loans_repository.dart';
import 'package:keys_manager/domain/entities/loan.dart';

part 'loans_form_bloc.freezed.dart';
part 'loans_form_state.dart';

class LoansFormBloc extends Cubit<LoansFormState> {
  final ILoansRepository repository;

  LoansFormBloc({
    required this.repository,
  }) : super(LoansFormState.initial());

  updateUserId(int v) => emit(state.copyWith(userId: UserId.dirty(v)));

  updateKeyId(int v) => emit(state.copyWith(keyId: KeyId.dirty(v)));

  submit() {
    repository.create(Loan(
      userId: state.userId.value,
      keyId: state.keyId.value,
    ));
  }
}
