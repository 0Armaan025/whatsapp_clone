import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BuildNavBar extends StatefulWidget {
  const BuildNavBar({super.key});

  @override
  State<BuildNavBar> createState() => _BuildNavBarState();
}

class _BuildNavBarState extends State<BuildNavBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      option: AnimatedBarOptions(
        barAnimation: BarAnimation.fade,
        iconStyle: IconStyle.animated,
      ),

      items: [
        BottomBarItem(
          icon: const Icon(Icons.chat_outlined),
          title: const Text('Chats'),
          backgroundColor: Colors.black,
          selectedIcon: const Icon(Icons.chat_rounded),
        ),
        BottomBarItem(
          icon: const Icon(Icons.update_rounded),
          title: const Text('Updates'),
          backgroundColor: Colors.black,
        ),
        BottomBarItem(
          icon: const Icon(Icons.group_sharp),
          title: const Text('Communities'),
          backgroundColor: Colors.black,
        ),
        BottomBarItem(
          icon: const Icon(Icons.call_outlined),
          title: const Text('Calls'),
          backgroundColor: Colors.black,
          selectedColor: Colors.yellow,
        ),
      ],
      fabLocation: StylishBarFabLocation.center,
      currentIndex: selected,

      // currentIndex: selected,
      onTap: (index) {
        setState(() {
          selected = index;
        });
      },
    );
  }
}
