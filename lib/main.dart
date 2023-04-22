import 'package:flutter/material.dart';

import 'package:eltacoloco/ui/colors.dart';
import 'package:eltacoloco/ui/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "El Taco Loco",
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      home: const HomePage(),
    );
  }
}