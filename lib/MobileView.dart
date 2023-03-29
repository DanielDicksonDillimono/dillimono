import 'package:dillimono/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset("MePhoto.jpg").image,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Color.fromARGB(178, 38, 38, 38),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Daniel Dickson Dillimono\n\n",
                          style: darkTitleStyle,
                        ),
                        TextSpan(
                          text: "Software Developer",
                          style: darkSubTitleStyle,
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                ListTile(
                  leading: const Icon(
                    CupertinoIcons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    "+31630119771",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                  ),
                  title: Text(
                    "danieldicksondillimono@gmail.com",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ABOUT\nME",
                  style: GoogleFonts.passionOne(
                    color: const Color.fromARGB(255, 38, 38, 38),
                    fontWeight: FontWeight.bold,
                    fontSize: 120,
                  ),
                ),
                Image.asset(
                  "csharpL.png",
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Figo BV: An R&D Experience\n",
                          style: lightTitleStyle,
                        ),
                        TextSpan(
                          text:
                              "My first job after graduation was at Figo BV. Figo, now part of BouWatch, is a company that specializes in the development of solutions for surveilance and remote security. I was part of a small group of smart individuals who were tasked with developing new products for the company.\n\nC# was the programming language of choice for the company and I was able to learn a lot about the language and how to use it to build applications. I was also able to learn a lot about the software development process and how to work in a team.\n\n",
                          style: lightTextStyle,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Image.asset("cplusplus.png"),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Xsens: Fun, games and pointers\n",
                          style: lightTitleStyle,
                        ),
                        TextSpan(
                          text:
                              "My second job after graduation was at Xsens. Xsens is a company that specializes in the development of motion capture solutions. Though I was taught to use C++ back in University, using it at Xsens was a whole different ball game. Working in a team of individuals spewing with ingenuity from the years of experience under their belts really showed the versatility of C++.\n\nMy task at Xsens was to fix bugs in the software and also to develop new features for the software. I was also tasked with integrating a third party indoor tracking device with our desktop application.\n\nThe time I spent at Xsens was a great experience for me. I was able to learn from industry experts and work with some of the best engineering minds.\n\n",
                          style: lightTextStyle,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Image.asset("flutter.png"),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Mobile Apps and marketing\n",
                          style: lightTitleStyle,
                        ),
                        TextSpan(
                          text:
                              "In 2020 I decided to take a break from my job at Xsens and focus on my personal projects and family. I had always been interested in creating my own mobile applications. During my stint at Figo and Xsens, I came across Xamarin and QT FrameWork which I knew could be used for crossplatform development. I also came across a relatively new FrameWork, Flutter.\n\nI decided to learn Flutter and build the application from scratch. I was able to learn a lot about the Flutter framework and how to use it to build my mobile application, Replee, and several other small MVPs including this website.\n\nReplee is a mobile application that allows users to create and share their own Workout schedule. It also gives the user the possiblity of selling a workout schedule on the platform. The application was available on the Google Play Store and the Apple App Store. I am currently working on a new version of the application which will be released soon.\n\n",
                          style: lightTextStyle,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Check out my git: ",
                      style: lightTextStyle,
                    ),
                    TextSpan(
                        text: "GitHub",
                        style: lightTextStyle.copyWith(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse("https://github.com/UnculturedCat/"),
                            );
                          })
                  ]),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "And let's connect on ",
                        style: lightTextStyle,
                      ),
                      TextSpan(
                        text: "LinkedIn",
                        style: lightTextStyle.copyWith(color: Colors.blue),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
