import 'package:flutter/material.dart';

class VaultSectionDesktop extends StatefulWidget {
  final String name;
  final Widget child;

  const VaultSectionDesktop(this.name, this.child, {Key? key}) : super(key: key);

  @override
  State<VaultSectionDesktop> createState() => _VaultSectionDesktopState();
}

class _VaultSectionDesktopState extends State<VaultSectionDesktop> {
  bool _isVisible = false;
  IconData _iconData = Icons.arrow_drop_down;

  _VaultSectionDesktopState();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 120.0, top: 40.0, right: 120.0),
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                  
                  if (_isVisible) {
                    _iconData = Icons.arrow_drop_up;
                  } else {
                    _iconData = Icons.arrow_drop_down;
                  }
                });
              },
              child: Row(
                children: [
                  Text(
                    widget.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    _iconData,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(
          height: 10,
          thickness: 1,
          indent: 100,
          endIndent: 100,
          color: Color(0xff9AA4AE),
        ),
        Visibility(
          visible: _isVisible,
          child: widget.child,
        ),
      ],
    );
  }
}
