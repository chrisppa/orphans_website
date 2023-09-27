import 'package:flutter/material.dart';

class HoverUnderlineTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverUnderlineTextButton(
      {super.key, required this.text, required this.onPressed, required ButtonStyle style});

  @override
  _HoverUnderlineTextButtonState createState() =>
      _HoverUnderlineTextButtonState();
}

class _HoverUnderlineTextButtonState extends State<HoverUnderlineTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.focused)) {
                return Colors.white;
              }
              return Colors.white;
            },
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              decoration:
                  _isHovered ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
