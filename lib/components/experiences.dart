import 'package:flutter/material.dart';
import 'package:portfolio/components/experience_component.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/utils/shader_text.dart';

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 20 : 200);

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 50, horizontal: horizontalPadding),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: GradientText(
              textStyle: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
              text: "Experiences".toUpperCase(),
              grad1: blueGrad.first,
              grad2: blueGrad.last,
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Experience(
                title: "Fullstack developper at Qrcode-Protect",
                icon: "assets/qrcode-protect-icon.png",
                date: "Sept 2021 - Oct 2022",
                content:
                    "I was hired at Qrcode Protect as a Fullstack Developper. At my arrival I had to learn Flutter and GCP, I was then tasked with developping mobile apps with Flutter and using GCP and Firebase as backend, I also had to use Flutter to build web apps.",
              ),
              Experience(
                title: "Internship, Fullstack developper at Yooviz",
                icon: "assets/yooviz-icon.png",
                date: "Mar 2021 - Oct 2021",
                content:
                    "As a fullstack développer at Yooviz, I was asked to develop a mobile application with React Native with Expo (In order to develop for iOS without an Apple device), and a back end using NodeJS with an ExpressJS server and with KnexJs to build SQL queries.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
