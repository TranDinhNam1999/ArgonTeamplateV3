import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';

class TableCellSetting extends StatelessWidget {
  final String title;
  final VoidCallback ontap;

  TableCellSetting({this.title = "", required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: ArgonColors.text)),
            const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: ArgonColors.text,
                  size: 14,
                ))
          ],
        ),
      ),
    );
  }
}
