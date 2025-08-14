import 'package:flutter/material.dart';

void main() {
  runApp(const RickyAndMorty());
}

class RickyAndMorty extends StatelessWidget {
  const RickyAndMorty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
