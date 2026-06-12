import 'package:flutter/material.dart';
import 'gradient_text.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text("Hello, I'm", style: TextStyle(fontSize: 20)),

                const SizedBox(height: 10),

                GradientText(
                  "Deepan",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.cyan],
                  ),
                ),
                const SizedBox(height: 20),

                const Text(
                  "Flutter & iOS Developer",
                  style: TextStyle(fontSize: 24),
                ),

                const SizedBox(height: 20),

                const Text("2.3 Years Experience in Mobile App Development"),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Lets Contact"),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
