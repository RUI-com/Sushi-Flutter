// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 138, 60, 55),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Positioned(
              right: 20,
              top: 30,
              child: Text(
                "日\n本\n 食",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: -60,
              top: 15,
              child: SvgPicture.asset(
                "assets/img/s1.svg",
                width: 350,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 310,
                  ),
                  // title
                  Text(
                    "THE TASTE OF JAPANESE FOOD",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Feel the taste of the most popular Japanse food from anywhere and anytime",
                    style: TextStyle(color: Colors.grey[200], height: 2),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MyButton(
                    text: 'Get Started',
                    onTap: () {
                      // go to menu page
                      Navigator.pushNamed(context, '/menupage');
                    },
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
