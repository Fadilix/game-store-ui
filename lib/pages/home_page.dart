import 'package:flutter/material.dart';
import 'package:game_store/components/carousel.dart';
import 'package:game_store/components/appbar/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const CustomAppbar(),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Hello",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Fadilix",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Carousel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
