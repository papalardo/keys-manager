import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/application/bloc/users_list_bloc/users_list_bloc.dart';
import 'package:keys_manager/application/routes.dart';
import 'package:keys_manager/main.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({Key? key}) : super(key: key);

  static make() {
    return BlocProvider(
      create: (_) => UsersListBloc(repository: getIt.get()),
      child: const UsersListScreen(),
    );
  }

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  void initState() {
    super.initState();
    bloc.load();
  }

  UsersListBloc get bloc => context.read<UsersListBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, Routes.USER_FORM);
          bloc.load();
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () => context.read<UsersListBloc>().load(),
        child: BlocBuilder<UsersListBloc, UsersListState>(builder: (_, state) {
          return state.result.maybeWhen(
            data: (users) {
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, index) {
                  var user = users[index];
                  return ListTile(
                    title: Text(user.name),
                  );
                },
              );
            },
            error: (e) => Text(e.error),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        }),
      ),
    );
  }
}
