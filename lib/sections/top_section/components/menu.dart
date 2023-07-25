import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  int _hoveredIndex = 0;
  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonials',
    'Contact',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(
        maxWidth: 1110,
      ),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          kDefaultShadow
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItems(index),
        ),
      ),
    );
  }

  Widget buildMenuItems(int index) => InkWell(
    onTap: () {
      setState(() {
        _selectedIndex = index;
      });
    },
    onHover: (value) {
      setState(() {
        value ? _hoveredIndex = index : _hoveredIndex = _selectedIndex;
      });
    },
    child: Container(
        constraints: const BoxConstraints(minWidth: 122),
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              menuItems[index],
              style: const TextStyle(fontSize: 20, color: kTextColor),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom:_selectedIndex != index && _hoveredIndex == index ? -20 : -32,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/hover.png',
                height: 46,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom:_selectedIndex == index ? -2 : -32,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/hover.png',
                height: 46,
              ),
            ),
          ],
        )),
  );
}
