import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/open_link.dart';
import 'package:portfolio/utils/shader_text.dart';
import 'package:portfolio/theme.dart';
import 'package:url_launcher/link.dart';

class Projects extends StatelessWidget {
  const Projects({super.key, required this.mainScrollController});
  final ScrollController mainScrollController;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = ((screenWidth < 1000) ? 0 : 200);
    ScrollController sController = ScrollController();

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
          child: Listener(
            onPointerSignal: (event) {
              print('test');
              if (event is PointerScrollEvent) {
                final offset = event.scrollDelta.dy;
                print(offset);
                sController.jumpTo(sController.offset + offset);
                mainScrollController
                    .jumpTo(mainScrollController.offset - offset);
              }
            },
            child: SingleChildScrollView(
              controller: sController,
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Project(
                    image: "assets/firebase_storage_select.png",
                    text: "Flutter Firebase Explorer",
                    link:
                        "https://github.com/sakayase/flutter_firebase_explorer",
                  ),
                  Project(
                    image: "assets/carsrent.png",
                    text: "Cars Rent C#",
                    link: "https://github.com/sakayase/CarsRent",
                  ),
                  Project(
                    image: "assets/commuride.png",
                    text: "Commuride",
                    link: "https://github.com/sakayase/Commuride",
                  ),
                  Project(
                    image: "assets/flutter_camera_rt.png",
                    text: "Flutter camera rt",
                    link: "https://github.com/sakayase/flutter_camera_rt",
                  ),
                  Project(
                    image: "assets/payment_form.png",
                    text: "Formulaire payement front",
                    link: "https://github.com/sakayase/flutter_payment_front",
                  ),
                  Project(
                    image: "assets/js_calculator.png",
                    text: "Calculatrice JS DOM",
                    link: "https://github.com/sakayase/js-calc",
                  ),
                ],
              ),
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
    this.link,
  });
  final String image;
  final String text;
  final String? link;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth < 425 ? 300 : 380;
    double cardHeigth = screenWidth < 425 ? 220 : 300;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Link(
          uri: Uri(path: link),
          builder: (context, funct) {
            return MouseRegion(
              cursor:
                  link != null ? SystemMouseCursors.click : MouseCursor.defer,
              child: GestureDetector(
                onTap: () {
                  if (link != null) {
                    Uri uri = Uri.parse(link!);
                    openLink(uri);
                  }
                },
                child: Container(
                  width: cardWidth,
                  height: cardHeigth,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: cardColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: cardWidth,
                        height: cardHeigth - 62,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image.asset(
                            image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: screenWidth < 425 ? 10 : 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              constraints:
                                  BoxConstraints(maxWidth: cardWidth - 65),
                              child: Text(
                                text.toUpperCase(),
                                style: screenWidth < 425
                                    ? Theme.of(context).textTheme.labelMedium
                                    : Theme.of(context).textTheme.labelLarge,
                                overflow: TextOverflow.clip,
                                softWrap: false,
                              ),
                            ),
                            if (link != null)
                              SvgPicture.asset("assets/view_icon.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
