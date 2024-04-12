import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/utils/open_link.dart';
import 'package:url_launcher/link.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Uri url = Uri(
      scheme: 'mailto',
      path: 'simon.ponitzki@gmail.com',
      queryParameters: {'subject': 'Making Contact'},
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 0,
      ),
      child: screenWidth < 500
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Link(
                  uri: url,
                  builder: (context, Future<void> Function()? funct) => Button(
                    onPressed: () {
                      openLink(url);
                    },
                    text: 'Get In Touch',
                    textColor: mainBgColor,
                    buttonColor: mainColor,
                  ),
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                ),
                Button(
                  onPressed: () {
                    window.open("assets/cv.pdf", "CV");
                  },
                  text: 'Download CV',
                  textColor: mainColor,
                  buttonColor: mainBgColor,
                  gradColor1: grad1.first,
                  gradColor2: grad1.last,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Link(
                  uri: url,
                  builder: (context, Future<void> Function()? funct) => Button(
                    onPressed: () {
                      openLink(url);
                    },
                    text: 'Get In Touch',
                    textColor: mainBgColor,
                    buttonColor: mainColor,
                  ),
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                ),
                Button(
                  onPressed: () {
                    window.open("assets/cv.pdf", "CV");
                  },
                  text: 'Download CV',
                  textColor: mainColor,
                  buttonColor: mainBgColor,
                  gradColor1: grad1.first,
                  gradColor2: grad1.last,
                ),
              ],
            ),
    );
  }
}
