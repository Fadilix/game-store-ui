import 'package:flutter/material.dart';
import 'package:game_store/components/appbar/custom_appbar.dart';
import 'package:game_store/components/carousel/carousel.dart';
import 'package:game_store/components/categories/categories.dart';
import 'package:game_store/components/products/product_card.dart';
import 'package:game_store/components/products/products_list_grid.dart';
import 'package:game_store/data/data.dart';
import 'package:game_store/functions/functions.dart';
import 'package:google_fonts/google_fonts.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      "Hot Deals",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const Carousel(),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Featured",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      data.shuffle();
                      final String img = data[index]["src"];
                      final String productName = data[index]["name"];
                      final price = generateRandomPrice();
                      return Row(
                        children: [
                          ProductCard(
                            img: img,
                            productName: productName,
                            price: price,
                          ),
                          const SizedBox(width: 10),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Categories(),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height + 50,
                  width: MediaQuery.of(context).size.width,
                  child: const ProductGrid(limit: 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
