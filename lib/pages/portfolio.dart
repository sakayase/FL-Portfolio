import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import 'package:portfolio/components/avatar.dart';
import 'package:portfolio/components/button_group.dart';
import 'package:portfolio/components/description.dart';
import 'package:portfolio/components/education.dart';
import 'package:portfolio/components/experiences.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/components/headline_component.dart';
import 'package:portfolio/components/projects.dart';
import 'package:portfolio/components/skills.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    GlobalKey avatarKey = GlobalKey();
    GlobalKey projectsKey = GlobalKey();
    GlobalKey experienceKey = GlobalKey();
    GlobalKey educationKey = GlobalKey();
    GlobalKey contactKey = GlobalKey();
    AppBar? appBar = getAppBar(
      screenWidth,
      avatarKey,
      projectsKey,
      experienceKey,
      educationKey,
      contactKey,
    );

    ScrollController mainScrollController = ScrollController();
    return Scaffold(
      appBar: appBar,
      drawerScrimColor: Colors.transparent,
      endDrawer: screenWidth > 1100
          ? null
          : Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  height: 280,
                  child: Drawer(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              Scrollable.ensureVisible(
                                  avatarKey.currentContext!);
                            },
                            child: Text(
                              "Home",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: Divider(),
                          ),
                          TextButton(
                            onPressed: () {
                              Scrollable.ensureVisible(
                                  projectsKey.currentContext!);
                            },
                            child: Text(
                              "Projects",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: Divider(),
                          ),
                          TextButton(
                            onPressed: () {
                              Scrollable.ensureVisible(
                                  experienceKey.currentContext!);
                            },
                            child: Text(
                              "Experiences",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: Divider(),
                          ),
                          TextButton(
                            onPressed: () {
                              Scrollable.ensureVisible(
                                  educationKey.currentContext!);
                            },
                            child: Text(
                              "Education",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: Divider(),
                          ),
                          TextButton(
                            onPressed: () {
                              Scrollable.ensureVisible(
                                  contactKey.currentContext!);
                            },
                            child: Text(
                              "Contact",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
      body: SingleChildScrollView(
        controller: mainScrollController,
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Avatar(key: avatarKey),
                const Headline(),
                const Description(),
                const ButtonGroup(),
                const Skills(),
                Projects(
                    key: projectsKey,
                    mainScrollController: mainScrollController),
                Experiences(
                  key: experienceKey,
                ),
                Education(
                  key: educationKey,
                ),
                Footer(
                  key: contactKey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
