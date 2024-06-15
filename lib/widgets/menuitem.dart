import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuBarItem extends StatefulWidget {
  final String title;
  final double fontSize;
  final VoidCallback onTap;

  MenuBarItem(
      {required this.title, required this.fontSize, required this.onTap});

  @override
  _MenuBarItemState createState() => _MenuBarItemState();
}

class _MenuBarItemState extends State<MenuBarItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovering = true;
      }),
      onExit: (_) => setState(() {
        _isHovering = false;
      }),
      child: InkWell(
        onTap: widget.onTap,
        child: Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: widget.fontSize,
            color: _isHovering ? Colors.black : Colors.black,
            decoration: _isHovering ? TextDecoration.none : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
