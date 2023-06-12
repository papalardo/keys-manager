import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/application/interfaces/keys_repository.dart';
import 'package:keys_manager/domain/entities/key.dart';

part 'keys_form_bloc.freezed.dart';
part 'keys_form_state.dart';

class KeysFormBloc extends Cubit<KeysFormState> {
  final IKeysRepository repository;

  KeysFormBloc({
    required this.repository,
  }) : super(KeysFormState.initial());

  updatePlace(String v) => emit(state.copyWith(place: Place.dirty(v)));

  submit() {
    repository.create(Key(
      place: state.place.value,
    ));
  }
}
