import 'package:dillimono/AboutMe.dart';
import 'package:dillimono/Projects.dart';
import 'package:dillimono/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentView extends StatefulWidget {
  final viewMode mode;
  const ContentView({Key? key, required this.mode}) : super(key: key);

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  late TextStyle bodyStyle;
  View currentView = View.aboutMe;

  @override
  void initState() {
    super.initState();
    bodyStyle = widget.mode == viewMode.dark ? darkTextStyle : lightTextStyle;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.mode == viewMode.dark
          ? const Color.fromARGB(255, 38, 38, 38)
          : Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: currentView == View.aboutMe
                  ? AboutMe(mode: widget.mode)
                  : Projects(mode: widget.mode),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                //
                children: [
                  Flexible(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          currentView = View.aboutMe;
                        });
                      },
                      child: Text(
                        "ABOUT\nME",
                        style: widget.mode == viewMode.dark
                            ? GoogleFonts.passionOne(
                                color: currentView == View.aboutMe
                                    ? Colors.white
                                    : const Color.fromRGBO(0, 140, 255, 0.1),
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    currentView == View.aboutMe ? 120 : 50,
                              )
                            : GoogleFonts.passionOne(
                                color: currentView == View.aboutMe
                                    ? const Color.fromARGB(255, 38, 38, 38)
                                    : const Color.fromRGBO(0, 140, 255, 0.1),
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    currentView == View.aboutMe ? 120 : 50,
                              ),
                      ),
                    ),
                  ),
                  // Flexible(
                  //   child: TextButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         currentView = View.projects;
                  //       });
                  //     },
                  //     child: Text(
                  //       "CURRENT\nPROJECTS",
                  //       style: widget.mode == viewMode.dark
                  //           ? GoogleFonts.passionOne(
                  //               color: currentView == View.projects
                  //                   ? Colors.white
                  //                   : const Color.fromRGBO(0, 140, 255, 0.1),
                  //               fontWeight: FontWeight.normal,
                  //               fontSize:
                  //                   currentView == View.projects ? 120 : 50,
                  //             )
                  //           : GoogleFonts.passionOne(
                  //               color: currentView == View.projects
                  //                   ? const Color.fromARGB(255, 38, 38, 38)
                  //                   : const Color.fromRGBO(0, 140, 255, 0.1),
                  //               fontWeight: FontWeight.normal,
                  //               fontSize:
                  //                   currentView == View.projects ? 120 : 50,
                  //             ),
                  //       textAlign: TextAlign.right,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
