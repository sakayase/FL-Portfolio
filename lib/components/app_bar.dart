import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme.dart';

AppBar? getAppBar(
  double screenWidth,
  GlobalKey avatarKey,
  GlobalKey projectKey,
  GlobalKey experienceKey,
  GlobalKey educationKey,
  GlobalKey contactKey,
) {
  String logoUrl = 'logo1.svg';

  if (screenWidth > 1100) {
    return AppBar(
      // Desktop
      toolbarHeight: 100,
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextButton(
              onPressed: () {
                Scrollable.ensureVisible(avatarKey.currentContext!);
              },
              child: SvgPicture.asset(
                logoUrl,
                width: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextButton(
              onPressed: () {
                Scrollable.ensureVisible(projectKey.currentContext!);
              },
              child: Text(
                'Projects',
                style: TextStyle(color: mainColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextButton(
              onPressed: () {
                Scrollable.ensureVisible(experienceKey.currentContext!);
              },
              child: Text(
                'Experiences',
                style: TextStyle(color: mainColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextButton(
              onPressed: () {
                Scrollable.ensureVisible(educationKey.currentContext!);
              },
              child: Text(
                'Education',
                style: TextStyle(color: mainColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextButton(
              onPressed: () {
                Scrollable.ensureVisible(contactKey.currentContext!);
              },
              child: Text(
                'Contact',
                style: TextStyle(color: mainColor),
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return AppBar(
      // Mobile
      toolbarHeight: 50,
      title: InkWell(
        onTap: () {
          Scrollable.ensureVisible(avatarKey.currentContext!);
        },
        child: SvgPicture.asset(
          logoUrl,
          width: 100,
        ),
      ),
      centerTitle: true,
    );
  }
}
