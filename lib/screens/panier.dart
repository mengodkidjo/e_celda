import 'package:e_celda/components/compteur.dart';
import 'package:e_celda/components/product_card.dart';
import 'package:e_celda/utils/constante.dart';
import 'package:flutter/cupertino.dart';

class Panier extends StatefulWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  List<String> listImagePath = [imageOgnion, imagePiment, imageGinger];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageTomato),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Tomate, 1kg",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: textColor,
                        fontFamily: fontFamily,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Text(
                        "1000 FCFA",
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            color: textColor,
                            fontFamily: fontFamily,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Compteur(minusCallback: (value) {}, addCallback: (value) {})
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Vous aimerez aussi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: fontFamily,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.24,
                  child: ListView.builder(
                    itemCount: listImagePath.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCard(
                          imagePath: listImagePath.elementAt(index));
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
