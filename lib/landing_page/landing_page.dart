import 'package:flutter/material.dart';
import 'package:password_manager_frontend/create_account_page/create_account_page.dart';
import 'package:password_manager_frontend/gradient_background/gradient_background.dart';
import 'package:password_manager_frontend/primary_button/primary_button.dart';
import 'package:password_manager_frontend/signin_page/signin_page.dart';

class LandingPageDesktop extends StatelessWidget {
  static const String route = "/";
  const LandingPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Column(
        children: [
          const Image(image: AssetImage("images/logo.png")),
          const SizedBox(
            height: 40.0,
          ),
          const Text(
            "Encrypted password management that puts your privacy back into your own hands.",
            style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80.0,
          ),
          PrimaryButton(
            "Sign In",
            onPressed: () {
              Navigator.of(context).pushNamed(SignInPageDesktop.route);
            },
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CreateAccountPageDesktop.route);
            },
            child: const Text(
              "Create an account",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
