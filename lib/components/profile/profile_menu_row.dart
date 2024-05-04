import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuRow extends StatefulWidget {
  final IconData icon;
  final String text;

  const MenuRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<MenuRow> createState() => _MenuRowState();
}

class _MenuRowState extends State<MenuRow> {
  void showSnackbar() {
    void show(BuildContext context) {
      const snackBar = SnackBar(
        content: Text("Not available for the moment"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    show(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showSnackbar,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Icon(widget.icon, size: 30),
            const SizedBox(width: 20),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
