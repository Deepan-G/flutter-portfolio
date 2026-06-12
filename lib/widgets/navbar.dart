import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),

      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,

        children: [

          const Text(
            "DEEPAN",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Row(
            children: [

              _navButton("About"),
              _navButton("Skills"),
              _navButton("Projects"),
              _navButton("Education"),
              _navButton("Contact"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _navButton(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}
