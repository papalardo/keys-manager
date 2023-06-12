import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/application/bloc/keys_list_bloc/keys_list_bloc.dart';
import 'package:keys_manager/application/routes.dart';
import 'package:keys_manager/main.dart';

class KeysListScreen extends StatefulWidget {
  const KeysListScreen({Key? key}) : super(key: key);

  static make() {
    return BlocProvider(
      create: (_) => KeysListBloc(repository: getIt.get()),
      child: const KeysListScreen(),
    );
  }

  @override
  State<KeysListScreen> createState() => _KeysListScreenState();
}

class _KeysListScreenState extends State<KeysListScreen> {
  KeysListBloc get bloc => context.read<KeysListBloc>();

  @override
  void initState() {
    super.initState();
    bloc.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.pushNamed(context, Routes.KEYS_FORM);
          bloc.load();
        },
      ),
      body: RefreshIndicator(
        onRefresh: () => bloc.load(),
        child: BlocBuilder<KeysListBloc, KeysListState>(builder: (_, state) {
          return state.result.maybeWhen(
            data: (keys) {
              if (keys.isEmpty) {
                return const Center(child: Text("Nenhuma chave encontrada"));
              }
              return ListView.builder(
                itemCount: keys.length,
                itemBuilder: (_, index) {
                  var key = keys[index];
                  return ListTile(
                    title: Text(key.place),
                  );
                },
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        }),
      ),
    );
  }
}
