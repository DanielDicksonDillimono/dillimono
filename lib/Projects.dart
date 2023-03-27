import 'package:dillimono/shared.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  final viewMode mode;
  const Projects({Key? key, required this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Text("Projects"),
          ],
        ),
      ),
    );
  }
}
