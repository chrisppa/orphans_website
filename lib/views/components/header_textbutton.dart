import 'package:flutter/material.dart';

class HeaderTextButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isSelected;

  const HeaderTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  _HeaderTextButtonState createState() => _HeaderTextButtonState();
}

class _HeaderTextButtonState extends State<HeaderTextButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft,
        ),
        child: Builder(
          builder: (context) {
            return Text(
              widget.title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: isHovered
                    ? Colors.white
                    : (widget.isSelected ? Colors.white : Colors.orange),
                decoration: widget.isSelected || isHovered
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ),
            );
          },
        ),
      ),
    );
  }
}
