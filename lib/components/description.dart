import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (screenWidth < 1000) ? 20 : 200,
        vertical: 20,
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Text(
          "I am a full-stack software engineer with 1 year of professional experience, in mobile and web applications development. My expertise lies in crafting maintainable apps in Flutter, React or React Native, .NET, and using the Google Cloud Platform.",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
