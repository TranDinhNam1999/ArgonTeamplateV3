// ignore_for_file: deprecated_member_use

import 'package:argonflutter/constant/Theme.dart';
import 'package:argonflutter/elements/widgets/table-cell.dart';
import 'package:argonflutter/home/widgets/drawer.dart';
import 'package:argonflutter/home/widgets/input.dart';
import 'package:argonflutter/home/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Elements extends StatefulWidget {
  @override
  _ElementsState createState() => _ElementsState();
}

class _ElementsState extends State<Elements> {
  late bool switchValueOne;
  late bool switchValueTwo;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        rightOptions: false,
        title: "Elements",
        tags: const [],
        getCurrentPage: () {},
        searchController: controller,
        searchOnChanged: (String value) {},
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      drawer: ArgonDrawer(currentPage: "Elements"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 24, left: 24, bottom: 36),
          child: SafeArea(
            bottom: true,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Buttons",
                        style: TextStyle(
                            color: ArgonColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.initial,
                          onPrimary: ArgonColors.white),
                      onPressed: () {
                        // Respond to button press
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("DEFAULT",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.primary,
                          onPrimary: ArgonColors.white),
                      onPressed: () {
                        // Respond to button press
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("PRIMARY",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.info,
                          onPrimary: ArgonColors.white),
                      onPressed: () {
                        // Respond to button press
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("INFO",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.success,
                          onPrimary: ArgonColors.white),
                      onPressed: () {
                        // Respond to button press
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("SUCCESS",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.warning,
                          onPrimary: ArgonColors.white),
                      onPressed: () {
                        // Respond to button press
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("WARNING",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          primary: ArgonColors.error,
                          onPrimary: ArgonColors.white),
                      onPressed: () {
                        // Respond to button press
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 12, bottom: 12),
                          child: Text("ERROR",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0))),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Typography",
                        style: TextStyle(
                            color: ArgonColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Heading 1",
                        style:
                            TextStyle(fontSize: 44, color: ArgonColors.text)),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 2",
                      style: TextStyle(fontSize: 38, color: ArgonColors.text)),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 3",
                      style: TextStyle(fontSize: 30, color: ArgonColors.text)),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 4",
                      style: TextStyle(fontSize: 24, color: ArgonColors.text)),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 5",
                      style: TextStyle(fontSize: 21, color: ArgonColors.text)),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Paragraph",
                      style: TextStyle(fontSize: 16, color: ArgonColors.text)),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("This is a muted paragraph.",
                      style: TextStyle(fontSize: 16, color: ArgonColors.muted)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Inputs",
                        style: TextStyle(
                            color: ArgonColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Input(
                    controller: controller,
                    onTap: () {},
                    onChanged: (String a) {},
                    suffixIcon: const Text(""),
                    placeholder: "Regular",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Input(
                    controller: controller,
                    onTap: () {},
                    onChanged: (String a) {},
                    suffixIcon: const Icon(Icons.ac_unit),
                    placeholder: "Custom border",
                    borderColor: ArgonColors.info,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Input(
                    controller: controller,
                    onTap: () {},
                    onChanged: (String a) {},
                    suffixIcon: Text(""),
                    placeholder: "Custom border",
                    borderColor: ArgonColors.info,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Input(
                    controller: controller,
                    onTap: () {},
                    onChanged: (String a) {},
                    suffixIcon: const Icon(Icons.check_circle,
                        color: ArgonColors.success),
                    placeholder: "Custom success",
                    borderColor: ArgonColors.success,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Input(
                    controller: controller,
                    onTap: () {},
                    onChanged: (String a) {},
                    suffixIcon:
                        const Icon(Icons.error, color: ArgonColors.error),
                    placeholder: "Custom error",
                    borderColor: ArgonColors.error,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Switches",
                        style: TextStyle(
                            color: ArgonColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Switch is ON",
                        style: TextStyle(color: ArgonColors.text)),
                    Switch.adaptive(
                      value: switchValueOne,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueOne = newValue),
                      activeColor: ArgonColors.primary,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Switch is OFF",
                        style: TextStyle(color: ArgonColors.text)),
                    Switch.adaptive(
                      value: switchValueTwo,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueTwo = newValue),
                      activeColor: ArgonColors.primary,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Navigation",
                        style: TextStyle(
                            color: ArgonColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
                Navbar(
                  backButton: true,
                  title: "Regular",
                  tags: const [],
                  getCurrentPage: () {},
                  searchOnChanged: (String value) {},
                  searchController: controller,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Navbar(
                    title: "Custom background",
                    backButton: true,
                    bgColor: ArgonColors.primary,
                    tags: const [],
                    getCurrentPage: () {},
                    searchOnChanged: (String value) {},
                    searchController: controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Navbar(
                    title: "Categories",
                    searchBar: true,
                    categoryOne: "Incredible",
                    categoryTwo: "Customization",
                    backButton: true,
                    tags: const [],
                    getCurrentPage: () {},
                    searchOnChanged: (String value) {},
                    searchController: controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Navbar(
                    title: "Search",
                    searchBar: true,
                    backButton: true,
                    tags: const [],
                    getCurrentPage: () {},
                    searchOnChanged: (String value) {},
                    searchController: controller,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Table Cell",
                        style: TextStyle(
                            color: ArgonColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
                TableCellSetting(
                    title: "Manage Options in Settings",
                    ontap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
