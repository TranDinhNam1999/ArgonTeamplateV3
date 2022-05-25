// ignore_for_file: deprecated_member_use
import 'dart:ui';
import 'package:argonflutter/constant/Theme.dart';
import 'package:argonflutter/home/widgets/drawer.dart';
import 'package:argonflutter/home/widgets/input.dart';
import 'package:argonflutter/home/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkboxValue = false;

  final double height = window.physicalSize.height;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "",
        transparent: true,
        tags: const [],
        getCurrentPage: () {},
        searchController: controller,
        searchOnChanged: (String value) {},
      ),
      extendBodyBehindAppBar: true,
      drawer: ArgonDrawer(currentPage: "Account"),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/register-bg.png"),
                    fit: BoxFit.cover)),
          ),
          SafeArea(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 24.0, right: 24.0, bottom: 32),
                child: Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: const BoxDecoration(
                            color: ArgonColors.white,
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.5, color: ArgonColors.muted))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Center(
                                child: Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text("Sign up with",
                                  style: TextStyle(
                                      color: ArgonColors.text, fontSize: 16.0)),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    // width: 0,
                                    height: 36,
                                    child: RaisedButton(
                                        textColor: ArgonColors.primary,
                                        color: ArgonColors.secondary,
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10,
                                                top: 10,
                                                left: 14,
                                                right: 14),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: const [
                                                Icon(FontAwesomeIcons.github,
                                                    size: 13),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("GITHUB",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13))
                                              ],
                                            ))),
                                  ),
                                  SizedBox(
                                    // width: 0,
                                    height: 36,
                                    child: RaisedButton(
                                        textColor: ArgonColors.primary,
                                        color: ArgonColors.secondary,
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10,
                                                top: 10,
                                                left: 8,
                                                right: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: const [
                                                Icon(FontAwesomeIcons.facebook,
                                                    size: 13),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("FACEBOOK",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13))
                                              ],
                                            ))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.63,
                          color: const Color.fromRGBO(244, 245, 247, 1),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 24.0, bottom: 24.0),
                                    child: Center(
                                      child: Text(
                                          "Or sign up with the classic way",
                                          style: TextStyle(
                                              color: ArgonColors.text,
                                              fontWeight: FontWeight.w200,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                          placeholder: "Name",
                                          prefixIcon: const Icon(Icons.school),
                                          controller: controller,
                                          onTap: () {},
                                          onChanged: (String a) {},
                                          suffixIcon: const Text(""),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                          placeholder: "Email",
                                          prefixIcon: const Icon(Icons.email),
                                          controller: controller,
                                          onTap: () {},
                                          onChanged: (String a) {},
                                          suffixIcon: const Text(""),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Input(
                                          placeholder: "Password",
                                          prefixIcon: const Icon(Icons.lock),
                                          controller: controller,
                                          onTap: () {},
                                          onChanged: (String a) {},
                                          suffixIcon: const Text(""),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 24.0),
                                        child: RichText(
                                            text: const TextSpan(
                                                text: "password strength: ",
                                                style: TextStyle(
                                                    color: ArgonColors.muted),
                                                children: [
                                              TextSpan(
                                                  text: "strong",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          ArgonColors.success))
                                            ])),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 0, bottom: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                            activeColor: ArgonColors.primary,
                                            onChanged: (newValue) {
                                              setState(() {
                                                _checkboxValue = newValue!;
                                              });
                                            },
                                            value: _checkboxValue),
                                        const Text("I agree with the",
                                            style: TextStyle(
                                                color: ArgonColors.muted,
                                                fontWeight: FontWeight.w200)),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/pro');
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 5),
                                              child: const Text(
                                                  "Privacy Policy",
                                                  style: TextStyle(
                                                      color:
                                                          ArgonColors.primary)),
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Center(
                                      child: FlatButton(
                                        textColor: ArgonColors.white,
                                        color: ArgonColors.primary,
                                        onPressed: () {
                                          // Respond to button press
                                          Navigator.pushNamed(context, '/home');
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0,
                                                right: 16.0,
                                                top: 12,
                                                bottom: 12),
                                            child: Text("REGISTER",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0))),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
