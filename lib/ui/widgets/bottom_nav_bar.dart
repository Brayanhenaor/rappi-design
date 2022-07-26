import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BottomNavItem(
            icon: Icons.menu,
          ),
          SizedBox(
            width: 20,
          ),
          BottomNavItem(
            icon: Icons.discount_outlined,
          ),
          SizedBox(
            width: 20,
          ),
          BottomNavItem(
            icon: Icons.headphones,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  const BottomNavItem({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
