import 'package:dillimono/ContentView.dart';
import 'package:dillimono/OverView.dart';
import 'package:dillimono/shared.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  viewMode mode = viewMode.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        shadowColor: const Color.fromARGB(0, 0, 0, 0),
        actions: [
          mode == viewMode.light
              ? TextButton.icon(
                  onPressed: () => setState(() {
                    mode = viewMode.dark;
                  }),
                  icon: const Icon(
                    Icons.dark_mode,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    "Dark mode",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              : TextButton.icon(
                  onPressed: () => setState(() {
                    mode = viewMode.light;
                  }),
                  icon: const Icon(
                    Icons.light_mode,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Light mode",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("MePhoto.jpg").image,
                  fit: BoxFit.cover,
                  colorFilter: mode == viewMode.dark
                      ? const ColorFilter.mode(
                          Color.fromARGB(178, 38, 38, 38),
                          BlendMode.darken,
                        )
                      : null,
                ),
              ),
              child: OverView(mode: mode),
            ),
          ),
          Expanded(
            flex: 7,
            child: ContentView(mode: mode),
          )
        ],
      ),
    );
  }
}
