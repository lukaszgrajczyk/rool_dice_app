import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First App',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
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






 
   
  //     child: Center(
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Image.asset(width: 250, 'assets/images/dice-1.png'),
  //           const SizedBox(height: 20),
  //           const Button(), //button class customization
  //         ],
  //       ),
  //     ),
  //   );
  // }
