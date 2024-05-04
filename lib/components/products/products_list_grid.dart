import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_store/components/products/product_card.dart';
import 'package:game_store/data/data.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  generateRandomPrice() {
    int price = Random().nextInt(700) + 20;
    return price.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    data.shuffle();
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 2 / 3,
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final String img = data[index]["src"];
        final String productName = data[index]["name"];
        final double price = generateRandomPrice();
        return ProductCard(img: img, productName: productName, price: price);
      },
    );
  }
}
