import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  const Compteur(
      {Key? key, required this.minusCallback, required this.addCallback})
      : super(key: key);
  final Function(int) minusCallback;
  final Function(int) addCallback;

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  final int _total = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 30,
      decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.minimize_rounded,
              color: Colors.white,
            ),
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.topCenter,
          ),
          Text(
            "$_total",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: fontFamily,
                fontSize: 13.0,
                fontWeight: FontWeight.w600),
          ),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add_rounded,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(2)),
        ],
      ),
    );
  }
}
