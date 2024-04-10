import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 20 : 200);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          Text(
            'Experience with'.toUpperCase(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45),
            child: Container(
              constraints:
                  BoxConstraints(maxWidth: screenWidth - horizontalPadding),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: 10,
                spacing: (screenWidth < 1000) ? 25 : 50,
                children: [
                  SvgPicture.asset('js.svg'),
                  SvgPicture.asset('nodejs.svg'),
                  SvgPicture.asset('html.svg'),
                  SvgPicture.asset('css.svg'),
                  SvgPicture.asset('react.svg'),
                  SvgPicture.asset('flutter.svg'),
                  SvgPicture.asset('csharp.svg'),
                  SvgPicture.asset('dotnet.svg'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Spacer extends StatelessWidget {
  const Spacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 45,
    );
  }
}
