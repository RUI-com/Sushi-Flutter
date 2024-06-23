// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Promocard extends StatelessWidget {
  final String text;
  final String image;
  const Promocard({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(
                height: 20,
              ),
              MyButton(
                text: "Reddem",
                onTap: () {},
              ),
            ],
          ),
          SvgPicture.asset(
            image,
            width: 100,
          ),
        ],
      ),
    );
  }
}
