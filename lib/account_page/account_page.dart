import 'package:flutter/material.dart';
import 'package:password_manager_frontend/landing_page/landing_page.dart';
import 'package:password_manager_frontend/navbar/navbar.dart';
import 'package:password_manager_frontend/secondary_button/secondary_button.dart';
import 'package:password_manager_frontend/vault_page/vault_page.dart';

class AccountPageDesktop extends StatelessWidget {
  static const String route = "/account";
  static const String name = "Account";
  static const VaultPage page = VaultPage.account;

  const AccountPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VaultPageDesktop(
      page,
      ListView(
        children: [
          AccountPageSection(
            "Login Credentials",
            [
              AccountPageItem(
                "Account Email",
                [
                  const SizedBox(
                    width: 240.0,
                    child: Text(
                      "test@email.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff9AA4AE),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    width: 240.0,
                    child: SecondaryButton("Change", onPressed: (){},),
                  ),
                ],
              ),
              AccountPageItem(
                "Master Password",
                [
                  SizedBox(
                    width: 240.0,
                    child: SecondaryButton("Change", onPressed: (){},),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    width: 240.0,
                    child: SecondaryButton("Revert change", onPressed: (){},),
                  ),
                ],
              ),
              AccountPageItem(
                "2FA",
                [
                  SizedBox(
                    width: 240.0,
                    child: SecondaryButton("Enable", onPressed: (){},),
                  ),
                ],
              ),
            ],
          ),
          AccountPageSection(
            "Preferences",
            [
              AccountPageItem(
                "Login Notifications",
                [
                  SizedBox(
                    width: 240.0,
                    child: SecondaryButton(
                      "Enable",
                      onPressed: () {
                        debugPrint("Login notifications enabled");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          AccountPageSection(
            "Actions",
            [
              AccountPageItem(
                "",
                [
                  SizedBox(
                    width: 240.0,
                    child: SecondaryButton(
                      "Sign out",
                      onPressed: () {
                        debugPrint("Signing out");

                        Navigator.of(context)
                            .pushNamed(LandingPageDesktop.route);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AccountPageSection extends StatelessWidget {
  final String heading;
  final List<Widget> items;

  const AccountPageSection(this.heading, this.items, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 120.0, top: 40.0, right: 120.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              heading,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ...items
      ],
    );
  }
}

class AccountPageItem extends StatelessWidget {
  final String name;
  final List<Widget> itemExtras;

  const AccountPageItem(this.name, this.itemExtras, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200.0, top: 20.0),
      child: Row(
        children: [
          SizedBox(
            width: 240.0,
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Color(0xff9AA4AE),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          ...itemExtras
        ],
      ),
    );
  }
}
