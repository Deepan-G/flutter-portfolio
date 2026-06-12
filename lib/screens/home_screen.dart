import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_colors.dart';
import '../animation/animated_stars.dart';
import '../widgets/hero_section.dart';
import '../widgets/navbar.dart';
import '../widgets/skills_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
         // const Positioned.fill(child: AnimatedStars()),
          SingleChildScrollView(
            child: Column(
              children: [
                // Navbar
                NavBar(),
                const SizedBox(height: 100),
                // Hero Section
                HeroSection(),
                const SizedBox(height: 100),
                SkillsSection(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
