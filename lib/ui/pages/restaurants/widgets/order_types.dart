import 'package:flutter/material.dart';
import 'package:rappi_clon/ui/theme/colors.dart';

class OrderTypes extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const OrderTypes({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _OrderType(
            onTap: () => onTap(0),
            title: 'Delivery',
            isSelected: selectedIndex == 0,
          ),
          const SizedBox(width: 20),
          _OrderType(
            onTap: () => onTap(1),
            title: 'Pickup',
            isSelected: selectedIndex == 1,
          ),
        ],
      ),
    );
  }
}

class _OrderType extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onTap;

  const _OrderType({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: ShapeDecoration(
            shape: StadiumBorder(
              side: BorderSide(
                color: isSelected ? AppColors.green : Colors.grey[200]!,
                width: 2,
              ),
            ),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: isSelected ? AppColors.green : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
