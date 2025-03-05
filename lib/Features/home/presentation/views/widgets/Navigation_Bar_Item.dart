import 'package:flutter/material.dart';
import 'package:fruits_store/Features/home/domain/Entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Inactive_bottom_Navigation_Bar_Item.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/active_bottom_Navigation_Bar_Item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bootomNavigationBarEntites,
  });

  final bool isSelected;
  final BottomNavigationBarEntity bootomNavigationBarEntites;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (widget, animation) => ScaleTransition(
        scale: animation,
        child: widget,
      ),
      child: isSelected
          ? activeItem(
              key: const ValueKey('active'),
              image: bootomNavigationBarEntites.activeImage,
              text: bootomNavigationBarEntites.name,
            )
          : InactiveItem(
              key: const ValueKey('inactive'),
              Image: bootomNavigationBarEntites.inActiveImage,
            ),
    );
  }
}
