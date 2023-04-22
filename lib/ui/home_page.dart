import 'package:flutter/material.dart';

import 'package:eltacoloco/ui/cafe.dart';
import 'package:eltacoloco/ui/churros.dart';
import 'package:eltacoloco/ui/colors.dart';
import 'package:eltacoloco/ui/tacos.dart';
import 'package:eltacoloco/ui/search_bar.dart';

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
      appBar: AppBar(
        backgroundColor: lightColorScheme.tertiary,
        foregroundColor: lightColorScheme.onTertiary,
        title: const Text(
          "Taquería El Taco Loco",
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'DancingScript',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        backgroundColor: lightColorScheme.tertiary,
        selectedItemColor: lightColorScheme.onTertiary,
        unselectedItemColor: lightColorScheme.onTertiary,
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Tacos",
            icon: Icon(
              Icons.local_pizza_outlined,
            ),
            activeIcon: Icon(Icons.local_pizza),
          ),
          BottomNavigationBarItem(
            label: "Churros",
            icon: Icon(
              Icons.fastfood_outlined,
            ),
            activeIcon: Icon(
              Icons.fastfood,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cafe",
            icon: Icon(
              Icons.coffee_outlined,
            ),
            activeIcon: Icon(
              Icons.coffee,
            ),
          ),
        ],
      ),
    );
  }
}
