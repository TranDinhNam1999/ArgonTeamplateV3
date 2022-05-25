import 'package:argonflutter/account/views/register.dart';
import 'package:argonflutter/articles/views/articles_page.dart';
import 'package:argonflutter/elements/views/element_page.dart';
import 'package:argonflutter/home/views/home_page.dart';
import 'package:argonflutter/onboarding/views/onboarding.dart';
import 'package:argonflutter/pro/views/pro_page.dart';
import 'package:argonflutter/profile/views/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Argon PRO Flutter',
      theme: ThemeData(fontFamily: 'OpenSans'),
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/onboarding": (BuildContext context) => Onboarding(),
        "/home": (BuildContext context) => Home(),
        "/profile": (BuildContext context) => Profile(),
        "/articles": (BuildContext context) => Articles(),
        "/elements": (BuildContext context) => Elements(),
        "/pro": (BuildContext context) => const Pro(),
        "/account": (BuildContext context) => Register(),
      },
    );
  }
}
