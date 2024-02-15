import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rool_dice_app/styled_text.dart';

var randomizer = Random(); //losowanko

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var activeImage = 1;
  var buttonStyle = false;

  void rolldice() {
    setState(
      () {
        activeImage = randomizer.nextInt(6) + 1;
        buttonStyle = !buttonStyle;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              //   0.01,
              //   1.0,
              //   0.00,
              //   0.0,
              //   0.01,
              //   0.01,
              // ],
              colors: [
                Color.fromARGB(255, 182, 34, 169),
                Color.fromARGB(255, 177, 162, 25),
                Color.fromRGBO(26, 7, 234, 0.86),
                Color.fromARGB(220, 119, 49, 231),
                Color.fromARGB(255, 176, 65, 65),
                Color.fromARGB(255, 73, 201, 78),
              ],
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: 250,
                'assets/images/dice-$activeImage.png',
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(
                    210,
                    50,
                  ),
                  backgroundColor: buttonStyle ? Colors.black : Colors.yellow,
                  foregroundColor: buttonStyle ? Colors.yellow : Colors.black,
                ),
                onPressed: rolldice,
                child: const StyledText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
