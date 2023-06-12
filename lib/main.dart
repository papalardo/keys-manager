import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:keys_manager/application/interfaces/keys_repository.dart';
import 'package:keys_manager/application/interfaces/loans_repository.dart';
import 'package:keys_manager/application/interfaces/users_repository.dart';
import 'package:keys_manager/application/routes.dart';
import 'package:keys_manager/application/screens/home_screen.dart';
import 'package:keys_manager/application/screens/keys_form_screen.dart';
import 'package:keys_manager/application/screens/loans_form_screen.dart';
import 'package:keys_manager/application/screens/users_form_screen.dart';
import 'package:keys_manager/application/screens/users_list_screen.dart';
import 'package:keys_manager/domain/interfaces/keys_data.dart';
import 'package:keys_manager/domain/interfaces/loans_data.dart';
import 'package:keys_manager/domain/interfaces/users_data.dart';
import 'package:keys_manager/domain/repositories/keys_repositories.dart';
import 'package:keys_manager/domain/repositories/loans_repository.dart';
import 'package:keys_manager/domain/repositories/users_repositories.dart';
import 'package:keys_manager/infra/data/keys_data.dart';
import 'package:keys_manager/infra/data/loans_data.dart';
import 'package:keys_manager/infra/data/users_data.dart';

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<ILoansData>(LoansData());
  getIt.registerSingleton<ILoansRepository>(LoansRepository(data: getIt.get()));
  getIt.registerSingleton<IUsersData>(UsersData());
  getIt.registerSingleton<IUsersRepository>(UsersRepository(data: getIt.get()));
  getIt.registerSingleton<IKeysData>(KeysData());
  getIt.registerSingleton<IKeysRepository>(KeysRepository(data: getIt.get()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Key Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.HOME,
      routes: {
        Routes.HOME: (_) => HomeScreen.make(),
        // Routes.HOME: (_) {
        //   return BlocProvider<ListLoansBloc>(
        //     create: (_) => getIt.get<ListLoansBloc>(),
        //     child: const ListLoansScreen(),
        //   );
        // },
        Routes.USER_FORM: (_) => UsersFormScreen.make(),
        Routes.USER_LIST: (_) => UsersListScreen.make(),
        Routes.KEYS_FORM: (_) => KeysFormScreen.make(),
        Routes.LOANS_FORM: (_) => LoansFormScreen.make(),
      },
    );
  }
}
