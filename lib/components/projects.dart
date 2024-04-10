import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/shader_text.dart';
import 'package:portfolio/theme.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 0 : 200);

    return Column(
      children: [
        GradientText(
          textStyle: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          text: "Projects".toUpperCase(),
          grad1: orangeGrad.first,
          grad2: orangeGrad.last,
        ),
        Container(
          constraints:
              BoxConstraints(maxWidth: screenWidth - horizontalPadding),
          child: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Project(
                  image: "assets/project-thumbnail-1.png",
                  text: "HTML Tutorialdsdsddddddddddddddddddddddd",
                ),
                Project(
                  image: "assets/project-thumbnail-2.png",
                  text: "CSS Tutorial",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth < 425 ? 300 : 380;
    double cardHeigth = screenWidth < 425 ? 220 : 300;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Container(
        width: cardWidth,
        height: cardHeigth,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: cardColor,
        ),
        child: Column(
          children: [
            Image.asset(image),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: screenWidth < 425 ? 10 : 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: cardWidth - 65),
                    child: Text(
                      text.toUpperCase(),
                      style: screenWidth < 425
                          ? Theme.of(context).textTheme.labelMedium
                          : Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                    ),
                  ),
                  SvgPicture.asset("assets/view_icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
