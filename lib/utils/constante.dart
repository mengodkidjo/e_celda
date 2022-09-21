import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(237, 109, 51, 1);
const Color textColor = Color.fromRGBO(33, 33, 33, 1);
Map<int, Color> pColor = {
  50: const Color.fromRGBO(237, 109, 51, .1),
  100: const Color.fromRGBO(237, 109, 51, .2),
  200: const Color.fromRGBO(237, 109, 51, .3),
  300: const Color.fromRGBO(237, 109, 51, .4),
  400: const Color.fromRGBO(237, 109, 51, .5),
  500: const Color.fromRGBO(237, 109, 51, .6),
  600: const Color.fromRGBO(237, 109, 51, .7),
  700: const Color.fromRGBO(237, 109, 51, .8),
  800: const Color.fromRGBO(237, 109, 51, .9),
  900: const Color.fromRGBO(237, 109, 51, 1),
};
MaterialColor colorMaterial = MaterialColor(0xed6d33, pColor);

const String iconHome = "assets/images/home.png";
const String iconPanier = "assets/images/panier.png";
const String iconSearch = "assets/images/magnifier.png";
const String imageTomato = "assets/images/tomatoes.png";
const String imageOgnion = "assets/images/ognion.jpg";
const String imageGinger = "assets/images/ginger.jpg";
const String imagePiment = "assets/images/piment.jpg";
const String imageProfile = "assets/images/profile.jpg";
const String fontFamily = "Montserrat";

const priceTextStyle = TextStyle(
    color: textColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    fontSize: 13.0);

const descTextStyle = TextStyle(
    color: textColor,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    fontSize: 12.0);
const inputHintStyle = TextStyle(
    color: Colors.grey,
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w500);
const BorderRadius imSenderBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(8.0),
    topRight: Radius.circular(8.0),
    bottomLeft: Radius.circular(8.0));
const BorderRadius imNotSenderBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(8.0),
    topRight: Radius.circular(8.0),
    bottomRight: Radius.circular(8.0));
const inputMessageHintStyle = TextStyle(
    color: Colors.white,
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w500);

List<String> messages = [
  "Quel est votre souci?",
  "J'ai besoin d'un produit",
  "Quel produit",
  "Une minie brosse à dent"
];
List<String> hours = ["13:20", "13:22", "13:24", "13:24"];
