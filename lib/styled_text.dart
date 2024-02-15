import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Roll dice',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.normal,
        shadows: <Shadow>[
          Shadow(color: Color.fromARGB(255, 217, 217, 211), blurRadius: 25.0),
          Shadow(color: Color.fromARGB(180, 95, 162, 13), blurRadius: 25.0),
        ],
      ),
    );
  }
}
