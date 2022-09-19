import 'package:flutter/material.dart';

import 'gradient_background.dart';
import 'passwords_page.dart';
import '../primary_button.dart';

class CreateAccountPageDesktop extends StatelessWidget {
  static const String route = "/createaccount";
  const CreateAccountPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Column(
        children: [
          const Image(
            image: AssetImage("images/N.png"),
            height: 100.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Create your Nuke Account",
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40.0,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Username or Email address",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xff9AA4AE),
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff242E39), width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff242E39), width: 2.0),
              ),
              filled: true,
              fillColor: Color(0xff1C1F2C),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Password",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xff9AA4AE),
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            obscureText: true,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff242E39), width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff242E39), width: 2.0),
              ),
              filled: true,
              fillColor: Color(0xff1C1F2C),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Repeat password",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xff9AA4AE),
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            obscureText: true,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff242E39), width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff242E39), width: 2.0),
              ),
              filled: true,
              fillColor: Color(0xff1C1F2C),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          PrimaryButton(
            "Create account",
            onPressed: () {
              Navigator.of(context).pushNamed(PasswordsPageDesktop.route);
            },
          ),
          const SizedBox(
            height: 40.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "Back",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
