import 'dart:math';

import 'package:argonflutter/constant/Theme.dart';
import 'package:argonflutter/home/widgets/drawer-title.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

enum CurrentPageState { home, profile, account, elements, articles }

class ArgonDrawer extends StatelessWidget {
  final String currentPage;

  ArgonDrawer({this.currentPage = ""});

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
    return Drawer(
        child: Container(
      color: ArgonColors.white,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.85,
            child: const SafeArea(
                bottom: false,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(padding: EdgeInsets.only(left: 32)),
                )),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              children: [
                DrawerTitle(
                  icon: Icons.home,
                  onTap: () {
                    if (currentPage != "Home") {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  iconColor: ArgonColors.primary,
                  title: "Home",
                  isSelected: currentPage == "Home" ? true : false,
                ),
                DrawerTitle(
                  icon: Icons.pie_chart,
                  onTap: () {
                    if (currentPage != "Profile") {
                      Navigator.pushReplacementNamed(context, '/profile');
                    }
                  },
                  iconColor: ArgonColors.warning,
                  title: "Profile",
                  isSelected: currentPage == "Profile" ? true : false,
                ),
                DrawerTitle(
                    icon: Icons.account_circle,
                    onTap: () {
                      if (currentPage != "Account") {
                        Navigator.pushReplacementNamed(context, '/account');
                      }
                    },
                    iconColor: ArgonColors.info,
                    title: "Account",
                    isSelected: currentPage == "Account" ? true : false),
                DrawerTitle(
                    icon: Icons.settings_input_component,
                    onTap: () {
                      if (currentPage != "Elements") {
                        Navigator.pushReplacementNamed(context, '/elements');
                      }
                    },
                    iconColor: ArgonColors.error,
                    title: "Elements",
                    isSelected: currentPage == "Elements" ? true : false),
                DrawerTitle(
                    icon: Icons.apps,
                    onTap: () {
                      if (currentPage != "Articles") {
                        Navigator.pushReplacementNamed(context, '/articles');
                      }
                    },
                    iconColor: ArgonColors.primary,
                    title: "Articles",
                    isSelected: currentPage == "Articles" ? true : false),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 8, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    height: 4,
                    thickness: 0,
                    color: ArgonColors.muted,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
                    child: Text("DOCUMENTATION",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 15)),
                  ),
                  DrawerTitle(
                      icon: Icons.airplanemode_active,
                      onTap: _launchURL,
                      iconColor: ArgonColors.muted,
                      title: "Getting Started",
                      isSelected:
                          currentPage == "Getting started" ? true : false),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
