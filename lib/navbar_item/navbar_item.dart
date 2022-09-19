import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String text;
  final String route;
  final bool isActive;

  const NavbarItem(this.text, this.route, this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 44.0),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600, color: isActive ? const Color(0xffaeb2fc) : Colors.white),
        ),
      ),
    );
  }
}