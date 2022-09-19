import 'package:flutter/material.dart';
import 'package:password_manager_frontend/pages/account_page.dart';
import 'package:password_manager_frontend/pages/create_account_page.dart';
import 'package:password_manager_frontend/pages/landing_page.dart';
import 'package:password_manager_frontend/pages/notes_page.dart';
import 'package:password_manager_frontend/pages/passwords_page.dart';
import 'package:password_manager_frontend/pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NukePass',
      initialRoute: LandingPageDesktop.route,
      routes: {
        LandingPageDesktop.route: (context) => const LandingPageDesktop(),
        SignInPageDesktop.route: (context) => const SignInPageDesktop(),
        CreateAccountPageDesktop.route: (context) => const CreateAccountPageDesktop(),
        PasswordsPageDesktop.route: (context) => const PasswordsPageDesktop(),
        NotesPageDesktop.route: (context) => const NotesPageDesktop(),
        AccountPageDesktop.route: (context) => const AccountPageDesktop()
      },
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: const MaterialColor(
          0xff7373E2,
          {
            50: Color(0xffeeeefc),
            100: Color(0xffd5d5f6),
            200: Color(0xffb9b9f1),
            300: Color(0xff9d9deb),
            400: Color(0xff8888e6),
            500: Color(0xff7373e2),
            600: Color(0xff6b6bdf),
            700: Color(0xff6060da),
            800: Color(0xff5656d6),
            900: Color(0xff4343cf),
          },
        ),
      ),
    );
  }
}
