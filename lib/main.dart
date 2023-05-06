import 'package:eltacoloco/ui/log%20in.dart';
import 'package:flutter/material.dart';

import 'package:eltacoloco/ui/colors.dart';
import 'package:eltacoloco/ui/home_page.dart';
import 'package:eltacoloco/ui/log in.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "El Taco Loco",
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      initialRoute: "login",
      routes: { "login": (BuildContext context) => LoginPage(),
        "home": (BuildContext context) => HomePage(),}
    );
  }
}