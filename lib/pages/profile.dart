import 'package:flutter/material.dart';
import 'package:game_store/components/profile/identity.dart';
import 'package:game_store/components/profile/profile_menu_row.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Account",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Identity(),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      MenuRow(icon: Icons.dark_mode, text: "Dark Mode"),
                      Divider(),
                      MenuRow(
                          icon: Icons.card_giftcard_outlined, text: "Orders"),
                      Divider(),
                      MenuRow(icon: Icons.history, text: "Purchase History"),
                      Divider(),
                      MenuRow(icon: Icons.payment, text: "Payment Methods"),
                      Divider(),
                      MenuRow(icon: Icons.privacy_tip, text: "privacy"),
                      Divider(),
                      MenuRow(icon: Icons.person, text: "Personal Info"),
                      Divider(),
                      MenuRow(icon: Icons.reviews_sharp, text: "Rewards"),
                      Divider(),
                      MenuRow(icon: Icons.settings, text: "Settings"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
