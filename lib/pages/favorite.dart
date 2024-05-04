import 'package:flutter/material.dart';
import 'package:game_store/components/appbar/custom_appbar.dart';
import 'package:game_store/components/categories/categories.dart';
import 'package:game_store/components/products/products_list_grid.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const CustomAppbar(),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      "Favorite",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const Categories(),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height + 50,
                  width: MediaQuery.of(context).size.width,
                  child: const ProductGrid(limit: 5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
