import 'package:dillimono/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverView extends StatelessWidget {
  final viewMode mode;
  const OverView({Key? key, required this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
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
    );
  }
}
