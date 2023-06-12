import 'package:flutter/material.dart';
import 'package:keys_manager/application/screens/keys_list_screen.dart';
import 'package:keys_manager/application/screens/loans_list_screen.dart';
import 'package:keys_manager/application/screens/users_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static make() => const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _pageIndex = 0;

  final List<Widget> pages = [
    LoansListScreen.make(),
    UsersListScreen.make(),
    KeysListScreen.make(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Empréstimos"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Usuários"),
          BottomNavigationBarItem(icon: Icon(Icons.key), label: "Chaves"),
        ],
      ),
    );
  }
}
