import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/application/bloc/user_form_bloc/user_form_bloc.dart';
import 'package:keys_manager/main.dart';

class UsersFormScreen extends StatefulWidget {
  const UsersFormScreen({Key? key}) : super(key: key);

  static make() {
    return BlocProvider<UserFormBloc>(
      create: (_) => UserFormBloc(repository: getIt.get()),
      child: const UsersFormScreen(),
    );
  }

  @override
  State<UsersFormScreen> createState() => _UsersFormScreenState();
}

class _UsersFormScreenState extends State<UsersFormScreen> {
  final _key = GlobalKey<FormState>();

  UserFormBloc get bloc => context.read<UserFormBloc>();

  void onSubmit() async {
    if (!_key.currentState!.validate()) return;

    await bloc.submit();

    if (!mounted) return;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: BlocBuilder<UserFormBloc, UserFormState>(builder: (_, state) {
          return Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Nome"),
                onChanged: (v) => bloc.updateName(v ?? ''),
                validator: (_) => state.name.displayError?.text(),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Telefone"),
                onChanged: (v) => bloc.updatePhone(v ?? ''),
                validator: (_) => state.phone.displayError?.text(),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onSubmit,
                child: Text("Enviar"),
              ),
            ],
          );
        }),
      ),
    );
  }
}
