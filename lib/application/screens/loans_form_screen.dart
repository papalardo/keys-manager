import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/application/bloc/keys_list_bloc/keys_list_bloc.dart';
import 'package:keys_manager/application/bloc/loans_form_bloc/loans_form_bloc.dart';
import 'package:keys_manager/application/bloc/users_list_bloc/users_list_bloc.dart';
import 'package:keys_manager/main.dart';

class LoansFormScreen extends StatefulWidget {
  const LoansFormScreen({Key? key}) : super(key: key);

  static make() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UsersListBloc(repository: getIt.get())),
        BlocProvider(create: (_) => KeysListBloc(repository: getIt.get())),
        BlocProvider(create: (_) => LoansFormBloc(repository: getIt.get())),
      ],
      child: const LoansFormScreen(),
    );
  }

  @override
  State<LoansFormScreen> createState() => _LoansFormScreenState();
}

class _LoansFormScreenState extends State<LoansFormScreen> {
  final _key = GlobalKey<FormState>();

  LoansFormBloc get bloc => context.read<LoansFormBloc>();

  @override
  void initState() {
    context.read<KeysListBloc>().load();
    context.read<UsersListBloc>().load();

    super.initState();
  }

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
        child: BlocBuilder<LoansFormBloc, LoansFormState>(builder: (_, state) {
          return Column(
            children: [
              BlocBuilder<UsersListBloc, UsersListState>(builder: (context, state) {
                return DropdownButtonFormField<int>(
                  onChanged: (v) => bloc.updateUserId(v!),
                  items: state.result.maybeWhen(
                    data: (users) => List.from(users.map((user) {
                      return DropdownMenuItem<int>(
                        value: user.id,
                        child: Text(user.name),
                      );
                    })),
                    orElse: () => [],
                  ),
                );
              }),
              BlocBuilder<KeysListBloc, KeysListState>(builder: (context, state) {
                return DropdownButtonFormField<int>(
                  onChanged: (v) => bloc.updateKeyId(v!),
                  items: state.result.maybeWhen(
                    data: (users) => List.from(users.map((user) {
                      return DropdownMenuItem<int>(
                        value: user.id,
                        child: Text(user.place),
                      );
                    })),
                    orElse: () => [],
                  ),
                );
              }),
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
