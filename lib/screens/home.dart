import 'dart:developer';

import 'package:e_celda/screens/inscription.dart';
import 'package:e_celda/screens/panier.dart';
import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget navBottom(int position) {
    _positionItem = position;
    switch (position) {
      case 0:
        return const SizedBox();
      case 1:
        return const SizedBox();
      case 2:
        log("d");
        return const Panier();
      case 3:
        return const SizedBox();
      default:
        return const SizedBox();
    }
  }

  int _positionItem = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.grey[200],
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Inscription()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: primaryColor,
            ),
          ),
          
        ),
        body: navBottom(_positionItem),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          currentIndex: _positionItem,
          onTap: (position) {
            setState(() {
              navBottom(position);
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: _positionItem == 0
                    ? Image.asset(
                        iconHome,
                        width: 24.0,
                        height: 24.0,
                        color: primaryColor,
                      )
                    : Image.asset(
                        iconHome,
                        width: 24.0,
                        height: 24.0,
                      )),
            BottomNavigationBarItem(
                label: "",
                icon: _positionItem == 1
                    ? Image.asset(
                        iconSearch,
                        width: 24.0,
                        height: 24.0,
                        color: primaryColor,
                      )
                    : Image.asset(
                        iconSearch,
                        width: 24.0,
                        height: 24.0,
                      )),
            BottomNavigationBarItem(
              label: "",
              icon: _positionItem == 2
                  ? Image.asset(
                      iconPanier,
                      width: 24.0,
                      height: 24.0,
                      color: primaryColor,
                    )
                  : Image.asset(
                      iconPanier,
                      width: 24.0,
                      height: 24.0,
                      color: textColor,
                    ),
            ),
            BottomNavigationBarItem(
                label: "",
                icon: _positionItem == 3
                    ? const Icon(
                        Icons.favorite_border,
                        color: primaryColor,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: textColor,
                      )),
            BottomNavigationBarItem(
                label: "",
                icon: _positionItem == 4
                    ? const Icon(
                        Icons.menu_outlined,
                        color: primaryColor,
                      )
                    : const Icon(
                        Icons.menu_outlined,
                        color: textColor,
                      ))
          ],
        ));
  }
}
