import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Color.fromARGB(255, 161, 181, 36)],
          begin: Alignment.bottomCenter,
          end: Alignment.centerLeft,
        ),
      ),
    );
  }
}
