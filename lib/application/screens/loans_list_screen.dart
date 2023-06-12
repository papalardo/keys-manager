import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/application/bloc/loans_list_bloc/loans_list_bloc.dart';
import 'package:keys_manager/application/routes.dart';
import 'package:keys_manager/main.dart';

class LoansListScreen extends StatefulWidget {
  const LoansListScreen({Key? key}) : super(key: key);

  static make() {
    return BlocProvider(
      create: (_) => LoansListBloc(repository: getIt.get()),
      child: const LoansListScreen(),
    );
  }

  @override
  State<LoansListScreen> createState() => _LoansListScreenState();
}

class _LoansListScreenState extends State<LoansListScreen> {
  LoansListBloc get bloc => context.read<LoansListBloc>();

  @override
  void initState() {
    super.initState();
    bloc.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, Routes.LOANS_FORM);

          bloc.load();
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () => bloc.load(),
        child: BlocBuilder<LoansListBloc, LoansListState>(builder: (_, state) {
          return state.loans.maybeWhen(
            data: (loans) {
              return ListView.builder(
                itemCount: loans.length,
                itemBuilder: (_, index) {
                  var loan = loans[index];
                  return ListTile(
                    title: Text("${loan.user?.name} / ${loan.key?.place}"),
                    subtitle: Text("Devolvida: ${loan.refunded == 1 ? "Sim" : 'Não'}"),
                  );
                },
              );
            },
            orElse: () => const Text("Loading.."),
          );
        }),
      ),
    );
  }
}
