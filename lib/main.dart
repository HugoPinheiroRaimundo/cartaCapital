import 'package:carta_capital/pages/Resets/Email/ResetEmailData.dart';
import 'package:carta_capital/pages/Resets/Email/ResetEmailSucess.dart';
import 'package:carta_capital/pages/Resets/Password/ResetPasswordCheck.dart';
import 'package:carta_capital/pages/Resets/Password/ResetPasswordData.dart';
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
      initialRoute: "/perfil",
      routes: {
        "/perfil": (_) => const PerfilPage(),
        "/Conta": (_) => const AccountPage(),
        "/reset": (_) => const ResetPassaword(),
        "/resetData": (_) => const ResetData(),
        "/resetEmailData": (_) => const ResetEmailData(),
        "/resetEmailSucess": (_) => const ResetEmailSucess(),
      },
    );
  }
}
