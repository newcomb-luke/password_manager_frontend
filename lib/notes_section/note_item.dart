import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  final String text;

  const NoteItem(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:const  Color(0xff23283C),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Color(0xff9AA4AE), fontSize: 30.0),
        ),
      ),
    );
  }
}