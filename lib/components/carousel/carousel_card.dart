import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselCard extends StatefulWidget {
  final String src;
  final Color color;
  const CarouselCard({super.key, required this.src, required this.color});

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  void show() {
    void showSnackBar(BuildContext context) {
      const snackBar = SnackBar(
        content: Text("Not available for the moment"),
        duration: Duration(seconds: 1),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    showSnackBar(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "20% OFF",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "For the holydays!",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: show,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "See discounts",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            // The image
            Image.asset(widget.src, width: 150),
          ],
        ),
      ),
    );
  }
}
