import 'package:flutter/material.dart';
import 'package:game_store/components/appbar/appbar_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  bool isSearchMode = false;

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text("Can't access cart for the moment!"),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {
          // print("Undo clicked!");
        },
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // For showing the snackbar.
  // I did this again because the initial type is void without parameter
  void show() {
    showSnackBar(context);
  }

  void toggleSearchMode() {
    setState(() {
      isSearchMode = !isSearchMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: Text(
              "GameZone",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            secondChild: const CustomTextField(),
            crossFadeState: isSearchMode
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 35,
                ),
                onPressed: toggleSearchMode,
              ),
              const SizedBox(width: 5),
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag,
                  size: 35,
                ),
                onPressed: show,
              ),
            ],
          )
        ],
      ),
    );
  }
}
