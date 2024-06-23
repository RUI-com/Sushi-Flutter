// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/foodtile.dart';

import 'package:flutter_application_1/components/promocard.dart';
import 'package:flutter_application_1/components/searchbar.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/screen/FoodDetailsPage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagepath: "assets/img/s15.svg",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "23.00",
        imagepath: "assets/img/s2.svg",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "23.00",
        imagepath: "assets/img/s3.svg",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "23.00",
        imagepath: "assets/img/s4.svg",
        rating: "4.9"),
  ];
  // navigate to food item details page
  void navigateToFoodDetials(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetailsPage(
            food: foodMenu[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: primaryColor),
            Text(
              'Tokyo',
              style: TextStyle(color: Colors.grey[900]),
            ),
          ],
        ),
        actions: [
          Container(
            width: 25,
            height: 25,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(52, 138, 61, 55)),
            child: Icon(
              Icons.person,
              color: primaryColor,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Promocard(text: "Get 32% Promo", image: "assets/img/s3.svg"),
                Promocard(text: "Get 20% Promo", image: "assets/img/s4.svg"),
                Promocard(text: "Get 32% Promo", image: "assets/img/s5.svg"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Searchbar(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetials(index),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
