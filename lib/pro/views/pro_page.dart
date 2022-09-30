// ignore_for_file: deprecated_member_use

import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Pro extends StatelessWidget {
  const Pro({Key? key}) : super(key: key);

  _launchURL() async {
    const url = 'https://creative-tim.com';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/pro-background.png"),
                  fit: BoxFit.cover))),
      Padding(
        padding:
            const EdgeInsets.only(top: 73, left: 32, right: 32, bottom: 16),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/img/logo-argon.png", scale: 1),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: Text.rich(TextSpan(
                          text: "Argon Design System",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 58),
                          children: <InlineSpan>[
                            WidgetSpan(
                                child: Container(
                                    padding: const EdgeInsets.all(2.0),
                                    margin: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 50.0, 50.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: const Color.fromRGBO(
                                            17, 205, 239, 1)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          top: 0, bottom: 0, left: 4, right: 4),
                                      child: Text("PRO",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          )),
                                    ))),
                          ])),
                    ),
                  ],
                ),
                const Text(
                    "Take advantage of all the features and screens made by Creative-Tim, coded on Flutter for both",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200)),
                // SizedBox(height: 26.0),
                Row(children: <Widget>[
                  Image.asset("assets/img/logo-ios.png", scale: 2.6),
                  const SizedBox(width: 30.0),
                  Image.asset("assets/img/logo-android.png", scale: 2.6)
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.info,
                          onPrimary: ArgonColors.white),
                      onPressed: _launchURL,
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("BUY NOW",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
