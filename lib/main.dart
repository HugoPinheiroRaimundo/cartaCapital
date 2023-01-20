import 'package:carta_capital/pages/account_page.dart';
import 'package:carta_capital/pages/perfil_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (_) => const PerfilPage(),
        "/Conta": (_) => const AccountPage(),
        //  "/one": (_) => const OnePage(),
      },
    );
  }
}
