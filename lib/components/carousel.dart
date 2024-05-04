import 'package:flutter/material.dart';
import 'package:game_store/components/carousel_card.dart';
import 'package:game_store/data/data.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,

        // hard coded yess i know!
        children: [
          CarouselCard(src: data[4]["src"], color: Colors.amber),
          const SizedBox(width: 10),
          CarouselCard(src: data[3]["src"], color: Colors.amber),
          const SizedBox(width: 10),
          CarouselCard(src: data[2]["src"], color: Colors.amber),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
