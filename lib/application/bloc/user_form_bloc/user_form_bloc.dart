import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/application/interfaces/users_repository.dart';
import 'package:keys_manager/domain/entities/user.dart';

part 'user_form_bloc.freezed.dart';
part 'user_form_state.dart';

class UserFormBloc extends Cubit<UserFormState> {
  final IUsersRepository repository;

  UserFormBloc({
    required this.repository,
  }) : super(UserFormState.initial());

  updateName(String v) => emit(state.copyWith(name: Name.dirty(v)));

  updatePhone(String v) => emit(state.copyWith(phone: Phone.dirty(v)));

  submit() {
    repository.create(User(
      name: state.name.value,
      phone: state.phone.value,
    ));
  }
}
