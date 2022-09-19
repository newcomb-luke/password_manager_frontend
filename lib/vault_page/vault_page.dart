import 'package:flutter/material.dart';

import '../navbar/navbar.dart';

class VaultPageDesktop extends StatelessWidget {
  final VaultPage thisPage;
  final Widget child;
  const VaultPageDesktop(this.thisPage, this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xff1C1F2C)),
        child: Column(
          children: [
            NavBarDesktop(thisPage),
            Expanded(
              child: child
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
