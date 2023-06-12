part of 'keys_form_bloc.dart';

@freezed
class KeysFormState with _$KeysFormState, FormzMixin {
  const KeysFormState._();

  const factory KeysFormState({
    required Place place,
    required FormzSubmissionStatus status,
  }) = _KeysFormState;

  factory KeysFormState.initial() {
    return const KeysFormState(
      place: Place.pure(),
      status: FormzSubmissionStatus.initial,
    );
  }

  @override
  List<FormzInput> get inputs => [place];
}

class Place extends FormzInput<String, PlaceValidationError> {
  const Place.pure([super.value = '']) : super.pure();

  const Place.dirty([super.value = '']) : super.dirty();

  @override
  PlaceValidationError? validator(String value) {
    if (value.isEmpty) return PlaceValidationError.invalid;
    return null;
  }
}

enum PlaceValidationError { invalid }

extension PlaceValidationErrorExtension on PlaceValidationError {
  String text() {
    switch (this) {
      case PlaceValidationError.invalid:
        return 'Local inválido';
    }
  }
}
