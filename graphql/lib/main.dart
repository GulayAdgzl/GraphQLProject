import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/view/home_page.dart';

void main() {
  runApp(const ProviderScope(child: RickyAndMorty()));
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
