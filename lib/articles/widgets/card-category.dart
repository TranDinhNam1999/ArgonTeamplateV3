import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String img;
  final VoidCallback tap;
  final String title;

  CardCategory(
      {this.img = "https://via.placeholder/250",
      this.title = "Placeholder Title",
      this.tap = defaultFunc});

  static void defaultFunc() {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 252,
      child: GestureDetector(
        onTap: tap,
        child: Card(
          elevation: 0.4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover)),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
              ),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: ArgonColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
