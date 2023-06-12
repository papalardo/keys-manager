part of 'user_form_bloc.dart';

@freezed
class UserFormState with _$UserFormState, FormzMixin {
  const UserFormState._();

  const factory UserFormState({
    required Name name,
    required Phone phone,
    required FormzSubmissionStatus status,
  }) = _UserFormState;

  factory UserFormState.initial() {
    return const UserFormState(
      name: Name.pure(),
      phone: Phone.pure(),
      status: FormzSubmissionStatus.initial,
    );
  }

  @override
  List<FormzInput> get inputs => [name, phone];
}

class Phone extends FormzInput<String, PhoneValidationError> {
  const Phone.pure([super.value = '']) : super.pure();

  const Phone.dirty([super.value = '']) : super.dirty();

  @override
  PhoneValidationError? validator(String value) {
    if (value.isEmpty) return PhoneValidationError.invalid;
    return null;
  }
}

enum PhoneValidationError { invalid }

extension PhoneValidationErrorExtension on PhoneValidationError {
  String text() {
    switch (this) {
      case PhoneValidationError.invalid:
        return 'Telefone não pode ficar em branco';
    }
  }
}

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure([super.value = '']) : super.pure();

  const Name.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) return NameValidationError.invalid;
    return null;
  }
}

enum NameValidationError { invalid }

extension NameValidationErrorExtension on NameValidationError {
  String text() {
    switch (this) {
      case NameValidationError.invalid:
        return 'Nome não pode ficar em branco';
    }
  }
}
