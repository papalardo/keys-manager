import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keys_manager/modules/loans/application/bloc/loan_bloc.dart';

class ListLoansScreen extends StatelessWidget {
  const ListLoansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoanBloc, LoanState>(builder: (_, state) {
        return state.loans.maybeWhen(
          data: (loans) {
            return ListView.builder(
              itemCount: loans.length,
              itemBuilder: (_, index) {
                var loan = loans[index];
                return ListTile(
                  title: Text(loan.refunded.toString()),
                );
              },
            );
          },
          orElse: () => const Text("Loading.."),
        );
      }),
    );
  }
}
