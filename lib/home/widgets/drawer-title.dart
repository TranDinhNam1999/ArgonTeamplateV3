import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';

class DrawerTitle extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool isSelected;
  final Color iconColor;

  DrawerTitle(
      {this.title = "Place title",
      this.icon,
      this.onTap,
      this.isSelected = false,
      this.iconColor = ArgonColors.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: isSelected ? ArgonColors.primary : ArgonColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected ? ArgonColors.white : iconColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 15,
                      color: isSelected
                          ? ArgonColors.white
                          : const Color.fromRGBO(0, 0, 0, 0.7)),
                ),
              )
            ],
          ),
        ));
  }
}
