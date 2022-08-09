import 'package:flutter/material.dart';

class ThicContainer extends StatelessWidget {
  const ThicContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.white)),
    );
  }
}