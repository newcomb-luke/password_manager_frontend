import 'package:flutter/material.dart';
import 'package:password_manager_frontend/account_page/account_page.dart';
import 'package:password_manager_frontend/passwords_page/passwords_page.dart';

import '../navbar_item/navbar_item.dart';
import '../notes_page/notes_page.dart';

enum VaultPage {
  passwords,
  notes,
  account
}

class NavBarDesktop extends StatelessWidget {
  final VaultPage activePage;

  static List<String> itemNames = const [
    PasswordsPageDesktop.name,
    NotesPageDesktop.name,
    AccountPageDesktop.name
  ];

  static List<String> itemRoutes = const [
    PasswordsPageDesktop.route,
    NotesPageDesktop.route,
    AccountPageDesktop.route,
  ];

  static List<VaultPage> itemPageValue = const [
    VaultPage.passwords,
    VaultPage.notes,
    VaultPage.account
  ];

  List<NavbarItem> genNavbarItems() {
    List<NavbarItem> list = [];

    for (int i = 0; i < itemNames.length; i++) {
      list.add(NavbarItem(itemNames[i], itemRoutes[i], itemPageValue[i] == activePage));
    }

    return list;
  }

  const NavBarDesktop(this.activePage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage("images/logo.png"),
          height: 60.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: genNavbarItems(),
        ),
      ],
    );
  }
}
