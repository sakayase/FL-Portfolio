import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 20 : 200);

    return Container(
      width: double.infinity,
      color: footerColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: horizontalPadding,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Contact",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              SizedBox(
                width: 900,
                child: Text(
                  "Junior full-stack developper with 1 year of professional experience in building Mobile and Web apps. Adept of constant learning, I aspire to have a versatile skill set that allow me to excel at what I do.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: 900,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.mail),
                      ),
                      Text(
                        "simon.ponitzki@gmail.com",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 900,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.phone),
                    ),
                    Text(
                      "06 48 48 91 52",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
