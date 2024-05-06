import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatElem extends StatefulWidget {
  final String text;
  final Color? bgColor;
  final Color color;
  const CatElem({
    super.key,
    required this.text,
    this.bgColor,
    required this.color,
  });

  @override
  State<CatElem> createState() => _CatElemState();
}

class _CatElemState extends State<CatElem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120),
        color: widget.bgColor,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(color: widget.color),
        ),
      ),
    );
  }
}
