// ignore_for_file: deprecated_member_use

import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/onboard-background.png"),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 73, left: 32, bottom: 16),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/img/argon-logo-onboarding.png",
                scale: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 48.0),
                    child: Text.rich(TextSpan(
                        text: "Design System",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 58,
                            fontWeight: FontWeight.w600))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Text(
                      "Fully coded Flutter widgets and screens,",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 40),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        primary: ArgonColors.text,
                        onPrimary: ArgonColors.secondary),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 12, bottom: 12),
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
        )
      ]),
    );
  }
}
