import 'package:flutter/material.dart';
import 'package:game_store/components/categories/category_elem.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CatElem(
            text: "All",
            color: Colors.white,
            bgColor: Colors.black,
          ),
          CatElem(
            text: "Consoles",
            color: Colors.black,
          ),
          CatElem(
            text: "Controllers",
            color: Colors.black,
          ),
          CatElem(
            text: "Games",
            color: Colors.black,
          ),
          CatElem(
            text: "Accessories",
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
