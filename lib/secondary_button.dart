import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final Function? onPressed;
  final String text;
  const SecondaryButton(this.text, {@required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed!();
      },
      child: Container(
        height: 40.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xff23283C),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}