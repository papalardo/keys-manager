part of 'loans_form_bloc.dart';

@freezed
class LoansFormState with _$LoansFormState, FormzMixin {
  const LoansFormState._();

  const factory LoansFormState({
    required UserId userId,
    required KeyId keyId,
  }) = _LoansFormState;

  factory LoansFormState.initial() {
    return const LoansFormState(
      userId: UserId.pure(),
      keyId: KeyId.pure(),
    );
  }

  @override
  List<FormzInput> get inputs => [userId];
}

class UserId extends FormzInput<int, UserIdValidationError> {
  const UserId.pure([super.value = 0]) : super.pure();

  const UserId.dirty([super.value = 0]) : super.dirty();

  @override
  UserIdValidationError? validator(int value) {
    if (value <= 0) return UserIdValidationError.invalid;
    return null;
  }
}

enum UserIdValidationError { invalid }

extension UserIdValidationErrorExtension on UserIdValidationError {
  String text() {
    switch (this) {
      case UserIdValidationError.invalid:
        return 'Usuário inválido';
    }
  }
}

class KeyId extends FormzInput<int, KeyIdValidationError> {
  const KeyId.pure([super.value = 0]) : super.pure();

  const KeyId.dirty([super.value = 0]) : super.dirty();

  @override
  KeyIdValidationError? validator(int value) {
    if (value <= 0) return KeyIdValidationError.invalid;
    return null;
  }
}

enum KeyIdValidationError { invalid }

extension KeyIdValidationErrorExtension on KeyIdValidationError {
  String text() {
    switch (this) {
      case KeyIdValidationError.invalid:
        return 'Chave inválida';
    }
  }
}
