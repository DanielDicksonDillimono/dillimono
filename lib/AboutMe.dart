import 'package:dillimono/shared.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  final viewMode mode;
  const AboutMe({Key? key, required this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle bodyStyle =
        mode == viewMode.dark ? darkTextStyle : lightTextStyle;
    VerticalDivider divider = VerticalDivider(
      width: 20,
      indent: 20,
      endIndent: 0,
      color: mode == viewMode.dark
          ? Colors.white
          : const Color.fromARGB(255, 38, 38, 38),
      thickness: 2,
    );
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Opacity(
                //     opacity: 0.5,
                //     child: Image.asset(
                //       "NL.png",
                //       width: MediaQuery.of(context).size.width * 0.2,
                //       fit: BoxFit.contain,
                //       filterQuality: FilterQuality.medium,
                //     ),
                //   ),
                // ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: 900,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: divider,
                          ),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Moved to the Netherlands to study Creative Technology. After my study, I worked as an embedded software engineer and application software developer. My stint as Software Developer exposed me to working in relatively large teams and collaborating with individuals of varying expertise",
                                textAlign: TextAlign.left,
                                style: bodyStyle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: 900,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: divider,
                          ),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                  "Moved to the Netherlands to study Creative Technology. After my study, I worked as an embedded software engineer and application software developer. My stint as Software Developer exposed me to working in relatively large teams and collaborating with individuals of varying expertise",
                                  textAlign: TextAlign.left,
                                  style: bodyStyle),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: 900,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 200,
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: divider),
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Presently, with Buildnow, I get to work with people, break down their problems and, together, build a suitable solution usually in form of a mobile or web application.\n\nBesides building appplications, my other interest include: motorsport, comics, animations, working out and sketching. And, yeah, talking nonstop about cars and planes.",
                                    textAlign: TextAlign.left,
                                    style: bodyStyle,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 50,
                                    ),
                                    child: Wrap(
                                      children: [
                                        Text(
                                          "Check out the git repo for this website written in dart: ",
                                          style: bodyStyle,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(
                                              Uri.parse(
                                                  "https://github.com/UnculturedCat/buildnow"),
                                            );
                                          },
                                          child: const Text(
                                            "GitHub",
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Wrap(
                                      children: [
                                        Text(
                                          "And let's connect on",
                                          style: bodyStyle,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(
                                              Uri.parse(
                                                  "https://www.linkedin.com/in/daniel-dickson-dillimono/"),
                                            );
                                          },
                                          child: const Text(
                                            "LinkedIn",
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
