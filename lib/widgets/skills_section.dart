import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = {
      "Languages": ["Dart", "Swift"],
      "Frameworks": ["Flutter", "UIKit"],
      "State Management": ["BLoC", "Provider"],
      "Architecture": [
        "MVC",
        "MVVM",
        "Clean Architecture",
      ],
      "Navigation": [
        "GoRouter",
        "Navigator",
      ],
      "Networking": [
        "http",
        "Dio",
        "RESTful APIs",
        "JSON",
        "URLSession",
        "Alamofire",
      ],
      "Local Storage": [
        "SQLite",
        "Drift",
        "SharedPreferences",
      ],
      "Dependency Management": [
        "CocoaPods",
        "SPM",
      ],
      "Testing": [
        "XCTest",
        "Flutter Test",
      ],
      "Tools & IDEs": [
        "Xcode",
        "Android Studio",
        "VS Code",
        "Git",
      ],
      "Project Tracking": [
        "Jira",
        "Zendesk",
      ],
    };

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 80,
      ),
      child: Column(
        children: [
          const Text(
            "SKILLS",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: skills.entries.map((entry) {
              return Container(
                width: 320,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius:
                  BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.deepPurple,
                  ),
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.key,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: entry.value
                          .map(
                            (skill) => Chip(
                          label: Text(skill),
                        ),
                      )
                          .toList(),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}