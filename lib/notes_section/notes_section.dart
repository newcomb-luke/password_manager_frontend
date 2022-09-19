import 'package:flutter/material.dart';

import 'note_item.dart';
import '../vault_section/vault_section.dart';

class NotesSectionDesktop extends StatelessWidget {
  final String name;

  const NotesSectionDesktop(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VaultSectionDesktop(
      name,
      Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 1600.0,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3.0,
                mainAxisSpacing: 40.0,
                crossAxisSpacing: 60.0,
              ),
              itemCount: 6,
              itemBuilder: (_, index) {
                return NoteItem("Note $index");
              },
            ),
          ),
        ],
      ),
    );
  }
}