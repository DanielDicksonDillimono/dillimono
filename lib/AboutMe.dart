import 'package:dillimono/shared.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  final viewMode mode;
  const AboutMe({Key? key, required this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle bodyStyle =
        mode == viewMode.dark ? darkTextStyle : lightTextStyle;
    TextStyle titleStyle =
        mode == viewMode.dark ? darkTitleStyle : lightTitleStyle;
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
            height: MediaQuery.of(context).size.height * 0.5,
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
                          Expanded(
                            flex: 3,
                            child: Image.asset("UT.png"),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 200,
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: divider,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: SingleChildScrollView(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Creative Technology\n",
                                        style: titleStyle,
                                      ),
                                      TextSpan(
                                        text:
                                            "Born and raised in Nigeria, I discovered the University of Twente through a friend and decided to move to the Netherlands to study Creavitive Technology.\n\nStudying at the University of Twente was a great experience for me. I was able to learn a lot about myself and the world around me. I was also exposed technology and how it is changing the world around us.\n\nBeing challenged on a quartly basis to create technological solutions for societal problems really fueled my desire to build things that can make a difference in the world.\n\nUpon graduation, I worked as a Software Engineer at some companies and also had a few personal projects that I hope to share with you soon.\n\n",
                                        style: bodyStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
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
            height: MediaQuery.of(context).size.height * 0.5,
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
                          Expanded(
                            flex: 3,
                            child: Image.asset("csharpL.png"),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 200,
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: divider,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: SingleChildScrollView(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Figo BV: An R&D Experience\n",
                                        style: titleStyle,
                                      ),
                                      TextSpan(
                                        text:
                                            "My first job after graduation was at Figo BV. Figo, now part of BouWatch, is a company that specializes in the development of solutions for surveilance and remote security. I was part of a small group of smart individuals who were tasked with developing new products for the company.\n\nC# was the programming language of choice for the company and I was able to learn a lot about the language and how to use it to build applications. I was also able to learn a lot about the software development process and how to work in a team.\n\n",
                                        style: bodyStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
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
            height: MediaQuery.of(context).size.height * 0.5,
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
                          Expanded(
                            flex: 3,
                            child: Image.asset("cplusplus.png"),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 200,
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: divider,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: SingleChildScrollView(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            "Xsens: Fun, games and pointers\n",
                                        style: titleStyle,
                                      ),
                                      TextSpan(
                                        text:
                                            "My second job after graduation was at Xsens. Xsens is a company that specializes in the development of motion capture solutions. Though I was taught to use C++ back in University, using it at Xsens was a whole different ball game. Working in a team of individuals spewing with ingenuity from the years of experience under their belts really showed the versatility of C++.\n\nMy task at Xsens was to fix bugs in the software and also to develop new features for the software. I was also tasked with integrating a third party indoor tracking device with our desktop application.\n\nThe time I spent at Xsens was a great experience for me. I was able to learn from industry experts and work with some of the best engineering minds.\n\n",
                                        style: bodyStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
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
            height: MediaQuery.of(context).size.height * 0.5,
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
                          Expanded(
                            flex: 3,
                            child: Image.asset("flutter.png"),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 200,
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: divider,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: SingleChildScrollView(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Mobile Apps and marketing\n",
                                        style: titleStyle,
                                      ),
                                      TextSpan(
                                        text:
                                            "In 2020 I decided to take a break from my job at Xsens and focus on my personal projects and family. I had always been interested in creating my own mobile applications. During my stint at Figo and Xsens, I came across Xamarin and QT FrameWork which I knew could be used for crossplatform development. I also came across a relatively new FrameWork, Flutter.\n\nI decided to learn Flutter and build the application from scratch. I was able to learn a lot about the Flutter framework and how to use it to build my mobile application, Replee, and several other small MVPs including this website.\n\nReplee is a mobile application that allows users to create and share their own Workout schedule. It also gives the user the possiblity of selling a workout schedule on the platform. The application was available on the Google Play Store and the Apple App Store. I am currently working on a new version of the application which will be released soon.\n\n",
                                        style: bodyStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
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
            height: MediaQuery.of(context).size.height * 0.5,
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
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.only(
                                        top: 50,
                                      ),
                                      // child: Wrap(
                                      //   children: [
                                      //     Text(
                                      //       "Check out my git: ",
                                      //       style: bodyStyle,
                                      //     ),
                                      //     TextButton(
                                      //       onPressed: () {
                                      //         launchUrl(
                                      //           Uri.parse(
                                      //               "https://github.com/UnculturedCat/"),
                                      //         );
                                      //       },
                                      //       child: Text("GitHub",
                                      //           style: bodyStyle.copyWith(
                                      //               color: Colors.blue)),
                                      //     )
                                      //   ],
                                      // ),
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: "Check out my git: ",
                                            style: bodyStyle,
                                          ),
                                          TextSpan(
                                              text: "GitHub",
                                              style: bodyStyle.copyWith(
                                                  color: Colors.blue),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launchUrl(
                                                    Uri.parse(
                                                        "https://github.com/UnculturedCat/"),
                                                  );
                                                })
                                        ]),
                                      )),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "And let's connect on ",
                                            style: bodyStyle,
                                          ),
                                          TextSpan(
                                            text: "LinkedIn",
                                            style: bodyStyle.copyWith(
                                                color: Colors.blue),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(
                                                  Uri.parse(
                                                      "https://www.linkedin.com/in/daniel-dickson-dillimono/"),
                                                );
                                              },
                                          )
                                        ],
                                      ),
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
