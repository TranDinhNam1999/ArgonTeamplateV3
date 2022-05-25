import 'package:argonflutter/constant/Theme.dart';
import 'package:argonflutter/home/widgets/card-horizontal.dart';
import 'package:argonflutter/home/widgets/card-small.dart';
import 'package:argonflutter/home/widgets/card-square.dart';
import 'package:argonflutter/home/widgets/drawer.dart';
import 'package:argonflutter/home/widgets/navbar.dart';
import 'package:flutter/material.dart';

Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Ice cream is made with carrageenan …",
    "image":
        "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"
  },
  "Makeup": {
    "title": "Is makeup one of your daily esse …",
    "image":
        "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80"
  },
  "Coffee": {
    "title": "Coffee is more than just a drink: It’s …",
    "image":
        "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80"
  },
  "Fashion": {
    "title": "Fashion is a popular style, especially in …",
    "image":
        "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1326&q=80"
  },
  "Argon": {
    "title": "Argon is a great free UI packag …",
    "image":
        "https://images.unsplash.com/photo-1482686115713-0fbcaced6e28?fit=crop&w=1947&q=80"
  }
};

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "Home",
        searchBar: true,
        categoryOne: "Beauty",
        categoryTwo: "Fashiom",
        tags: const [],
        getCurrentPage: () {},
        searchController: controller,
        searchOnChanged: (String value) {},
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      drawer: ArgonDrawer(currentPage: "Home"),
      body: Container(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: CardHorizontal(
                  cta: "View article",
                  title: "Ice cream is made with carrageenan …",
                  img:
                      "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80",
                  tap: () {
                    Navigator.pushNamed(context, '/pro');
                  },
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardSmall(
                      cta: "View article",
                      title: "Is makeup one of your daily esse …",
                      img:
                          "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80",
                      tap: () {
                        Navigator.pushNamed(context, '/pro');
                      }),
                  CardSmall(
                      cta: "View article",
                      title: "Coffee is more than just a drink: It’s …",
                      img:
                          "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80",
                      tap: () {
                        Navigator.pushNamed(context, '/pro');
                      })
                ],
              ),
              const SizedBox(height: 8.0),
              CardHorizontal(
                  cta: "View article",
                  title: "Fashion is a popular style, especially in …",
                  img:
                      "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1326&q=80",
                  tap: () {
                    Navigator.pushNamed(context, '/pro');
                  }),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CardSquare(
                    cta: "Argon is a great free UI packag …",
                    title: "",
                    img:
                        "https://images.unsplash.com/photo-1482686115713-0fbcaced6e28?fit=crop&w=1947&q=80",
                    tap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
