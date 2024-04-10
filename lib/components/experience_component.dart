import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Experience extends StatelessWidget {
  const Experience({
    super.key,
    this.icon,
    this.iconType,
    required this.title,
    required this.date,
    required this.content,
  });
  final String? icon;
  final String? iconType;
  final String title;
  final String date;
  final String content;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 20 : 200);
    print(screenWidth - horizontalPadding);

    if (screenWidth < 750) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SizedBox(
                  width: screenWidth - horizontalPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: screenWidth - horizontalPadding - 160),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            icon != null
                                ? Container(
                                    constraints:
                                        const BoxConstraints(maxWidth: 80),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 16.0),
                                      child: iconType == "svg"
                                          ? SvgPicture.asset(icon!)
                                          : Image.asset(icon!),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            Text(
                              date,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                              softWrap: true,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                content,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SizedBox(
                width: screenWidth - horizontalPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        icon != null
                            ? Container(
                                constraints: const BoxConstraints(maxWidth: 80),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: iconType == "svg"
                                      ? SvgPicture.asset(icon!)
                                      : Image.asset(icon!),
                                ),
                              )
                            : const SizedBox.shrink(),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth:
                                screenWidth < 1900 ? screenWidth * 0.38 : 700,
                          ),
                          child: Text(
                            title,
                            style: Theme.of(context).textTheme.labelLarge,
                            overflow: TextOverflow.clip,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 160),
                      child: Text(
                        date,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
