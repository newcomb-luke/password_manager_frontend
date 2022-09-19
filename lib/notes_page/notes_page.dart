import 'package:flutter/material.dart';
import 'package:password_manager_frontend/notes_section/notes_section.dart';

import '../navbar/navbar.dart';
import '../vault_page/vault_page.dart';

class NotesPageDesktop extends StatelessWidget {
  static const String route = "/notes";
  static const String name = "Notes";
  static const VaultPage page = VaultPage.notes;

  static const List<String> names = <String>[
    "Financial",
    "Email",
    "Business",
    "Entertainment",
    "Games"
  ];

  const NotesPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VaultPageDesktop(
      page,
      ListView.builder(
        itemCount: names.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return NotesSectionDesktop(names[index]);
        },
      ),
    );
  }
}