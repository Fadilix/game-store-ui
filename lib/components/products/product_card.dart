import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ProductCard extends StatefulWidget {
  bool isFavorite = false;
  final String img;
  final String productName;
  final double price;
  ProductCard({
    super.key,
    required this.img,
    required this.productName,
    required this.price,
  });
  @override
  State<ProductCard> createState() => ProductCardState();
}

class ProductCardState extends State<ProductCard> {
  void toggleFavorite() {
    setState(() {
      widget.isFavorite = !widget.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: toggleFavorite,
                icon: widget.isFavorite
                    ? const Icon(Icons.favorite, color: Colors.red)
                    : const Icon(Icons.favorite_border),
              ),
              
            ],
          ),
          Image.asset(widget.img, width: 100),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  widget.productName,
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.price}\$",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: const Icon(Icons.arrow_right_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
