import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function? onPressed;
  final String text;
  const PrimaryButton(this.text, {@required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed!();
      },
      child: Container(
        height: 46.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
