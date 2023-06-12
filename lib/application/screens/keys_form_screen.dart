import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/application/bloc/keys_form_bloc/keys_form_bloc.dart';
import 'package:keys_manager/main.dart';

class KeysFormScreen extends StatefulWidget {
  const KeysFormScreen({Key? key}) : super(key: key);

  static make() {
    return BlocProvider(
      create: (_) => KeysFormBloc(repository: getIt.get()),
      child: const KeysFormScreen(),
    );
  }

  @override
  State<KeysFormScreen> createState() => _KeysFormScreenState();
}

class _KeysFormScreenState extends State<KeysFormScreen> {
  final _key = GlobalKey<FormState>();

  KeysFormBloc get bloc => context.read<KeysFormBloc>();

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
        child: BlocBuilder<KeysFormBloc, KeysFormState>(
          builder: (_, state) {
            return Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "Nome"),
                  onChanged: (v) => bloc.updatePlace(v ?? ''),
                  validator: (_) => state.place.displayError?.text(),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onSubmit,
                  child: Text("Enviar"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
