import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final Function() openDrawer;
  const BottomNavBar({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomNavItem(
            onTap: openDrawer,
            icon: Icons.menu,
          ),
          const SizedBox(
            width: 20,
          ),
          BottomNavItem(
            onTap: () => {},
            icon: Icons.discount_outlined,
          ),
          const SizedBox(
            width: 20,
          ),
          BottomNavItem(
            onTap: () => {},
            icon: Icons.headphones,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;

  const BottomNavItem({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
