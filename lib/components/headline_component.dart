import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/utils/shader_text.dart';

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 20 : 200);
    double verticalPadding = 20;
    TextStyle style = ((screenWidth < 425)
        ? Theme.of(context).textTheme.headlineSmall
        : Theme.of(context).textTheme.headlineLarge)!;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: screenWidth - horizontalPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'I do code and realise',
                  style: style,
                  textAlign: TextAlign.center,
                ),
                GradientText(
                  text: ' websites, web apps, and applications',
                  grad1: grad1.first,
                  grad2: grad1.last,
                  textStyle: style,
                  textAlign: TextAlign.center,
                  begin: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
