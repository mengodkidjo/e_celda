import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(31, 201, 201, 201),
                spreadRadius: 1.0,
                blurRadius: 14,
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 32.0,
                height: 32.0,
                margin: const EdgeInsets.only(top: 8.0, right: 8.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.8, color: primaryColor),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(300))),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.add_rounded, color: primaryColor),
                    padding: EdgeInsets.all(3),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Image.asset(
            imagePath,
            width: 78,
            height: 78,
          ),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: const Text(
                "12 FCFA",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: priceTextStyle,
              )),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: const Text(
                "Lorem Ipsum",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: descTextStyle,
              ))
        ],
      ),
    );
  }
}
