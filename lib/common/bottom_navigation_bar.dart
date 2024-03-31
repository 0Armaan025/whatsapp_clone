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
      // option: BubbleBarOptions()
      option: AnimatedBarOptions(
        barAnimation: BarAnimation.fade,
        iconStyle: IconStyle.Default,
      ),
      // hasNotch: true,

      items: [
        BottomBarItem(
          icon: const Icon(Icons.chat_outlined),
          title: const Text('Chats'),
          backgroundColor: selected != 0
              ? Colors.black
              : const Color.fromARGB(255, 170, 153, 0),
          selectedIcon: const Icon(Icons.chat_rounded),
        ),
        BottomBarItem(
          icon: const Icon(Icons.update_rounded),
          title: const Text('Updates'),
          backgroundColor: selected != 1
              ? Colors.black
              : const Color.fromARGB(255, 170, 153, 0),
        ),
        BottomBarItem(
          icon: const Icon(Icons.group_sharp),
          title: const Text('Communities'),
          backgroundColor: selected != 2
              ? Colors.black
              : const Color.fromARGB(255, 170, 153, 0),
        ),
        BottomBarItem(
          icon: const Icon(Icons.call_outlined),
          title: const Text('Calls'),
          backgroundColor: selected != 3
              ? Colors.black
              : const Color.fromARGB(255, 170, 153, 0),
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
