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

  void rolldice() {
    setState(
      () {
        activeImage = randomizer.nextInt(5) + 1;
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
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 211, 216, 219),
                Colors.green,
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
                  //assets/images/dice-6.png
                  width: 250,
                  'assets/images/dice-$activeImage.png'), //1,2,3,4
              const SizedBox(height: 30),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(210, 50),
                    foregroundColor: Colors.yellow,
                    backgroundColor: Colors.black),
                onPressed: rolldice,
                child: const StyledText(),

                //button class customization
              ),
            ],
          ),
        ),
      ),
    );
  }
}
