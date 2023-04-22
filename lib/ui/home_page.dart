import 'package:flutter/material.dart';

import 'package:shekinah/ui/cafe.dart';
import 'package:shekinah/ui/churros.dart';
import 'package:shekinah/ui/colors.dart';
import 'package:shekinah/ui/tacos.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shekinah/ui/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPageIndex = 0;

  final List<Widget> pages = [
    const Taco(),
    const Churro(),
    const Cafe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: lightColorScheme.tertiary,
        title: const Text(
          "Taquería El Taco Loco",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontFamily: 'DancingScript',
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        backgroundColor: lightColorScheme.tertiary,
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: "Tacos",
              icon: Icon(Icons.local_pizza, color: Colors.white70,
              )),
          BottomNavigationBarItem(
            label: "Churros",
            icon: Icon(Icons.fastfood_outlined, color: Colors.white70),
          ),
          BottomNavigationBarItem(
            label: "Cafe",
            icon: Icon(FontAwesomeIcons.coffee, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
