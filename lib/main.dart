import 'package:flutter/material.dart';

import 'package:netflix/view/comming_soon_screen/commig_soon_screen.dart';
import 'package:netflix/view/splashscreen/splash_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
