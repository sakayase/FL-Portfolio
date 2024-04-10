import 'package:flutter/material.dart';
import 'package:portfolio/components/experience_component.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/utils/shader_text.dart';

class Education extends StatelessWidget {
  const Education({super.key});

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
              text: "Education".toUpperCase(),
              grad1: blueGrad.first,
              grad2: blueGrad.last,
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Experience(
                title: "Concepteur Developpeur d'Applications .NET",
                date: "Feb 2024 - Oct 2025",
                icon: "assets/diginamic-icon.png",
                content:
                    "Develop a secured app with UI and business components, develop a layered application. Analyse the needs of a client or a product owner and come up with solutions (mock an app, define an architecture). Deploying an application (testing, documentations, and prepare for production phase as DevOps).",
              ),
              Experience(
                title: "Developpeur Web et Web Mobile",
                date: "Oct 2020 - Avril 2021",
                icon: "assets/popschool-icon.png",
                content:
                    "Develop the front end part of an application or website (HTML/CSS, Javascript, ReactJS, React Native, Figma). Develop the back end part of an application or website (MariaDB, PHPMyAdmin, Symfony, Merise, UML).",
              ),
              Experience(
                title:
                    "Baccalaureat Scientifique Option Science de l'Ingenieur et Informatique et Science du Numerique (SI - ISN)",
                date: "2015",
                content: "",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
