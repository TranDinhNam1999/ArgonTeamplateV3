import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';

class CardHorizontal extends StatelessWidget {
  final String img;
  final String cta;
  final VoidCallback tap;
  final String title;

  CardHorizontal(
      {this.title = "Placeholder Title",
      this.cta = "",
      this.img = "https://via.placeholder.com/200",
      this.tap = defaultFunc});

  static void defaultFunc() {
    // ignore: avoid_print
    print("the function works!");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: GestureDetector(
        onTap: tap,
        child: Card(
          elevation: 0.6,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6.0),
                          bottomLeft: Radius.circular(6.0)),
                      image: DecorationImage(
                          image: NetworkImage(img), fit: BoxFit.cover),
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              color: ArgonColors.header, fontSize: 13),
                        ),
                        Text(
                          cta,
                          style: const TextStyle(
                              color: ArgonColors.primary,
                              fontSize: 11,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
