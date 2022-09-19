import 'package:flutter/material.dart';
import 'package:password_manager_frontend/navbar/navbar.dart';
import 'package:password_manager_frontend/password_section/password_section.dart';
import 'package:password_manager_frontend/pages/vault_page.dart';

class PasswordsPageDesktop extends StatelessWidget {
  static const String route = "/passwords";
  static const String name = "Passwords";
  static const VaultPage page = VaultPage.passwords;

  static const List<String> names = <String>[
    "Financial",
    "Email",
    "Business",
    "Entertainment",
    "Games"
  ];

  const PasswordsPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VaultPageDesktop(
      page,
      ListView.builder(
        itemCount: names.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return PasswordSectionDesktop(names[index]);
        },
      ),
    );
  }
}
