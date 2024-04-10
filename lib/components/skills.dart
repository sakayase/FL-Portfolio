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
                  SvgPicture.asset('assets/js.svg'),
                  SvgPicture.asset('assets/nodejs.svg'),
                  SvgPicture.asset('assets/html.svg'),
                  SvgPicture.asset('assets/css.svg'),
                  SvgPicture.asset('assets/react.svg'),
                  SvgPicture.asset('assets/flutter.svg'),
                  SvgPicture.asset('assets/csharp.svg'),
                  SvgPicture.asset('assets/dotnet.svg'),
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
