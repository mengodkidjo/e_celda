import 'package:e_celda/components/input_template.dart';
import 'package:e_celda/screens/chat.dart';
import 'package:e_celda/screens/home.dart';
import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController birthdayController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String phoneNumer = "";
  String sexeF = "Femme";
  String sexeH = "Homme";
  String sexe = "Femme";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Veuillez-vous inscrire",
                style: TextStyle(
                    color: primaryColor,
                    fontFamily: fontFamily,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.all(Radius.circular(8.0))),
                child: InternationalPhoneNumberInput(
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                    ),
                    cursorColor: primaryColor,
                    inputDecoration: InputDecoration(
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        hintText: "Numéro de téléphone",
                        hintStyle: inputHintStyle,
                        fillColor: Colors.grey[100],
                        filled: true),
                    onInputChanged: (value) {
                      phoneNumer = value.phoneNumber ?? "";
                    }),
              ),
              SafeArea(
                  minimum: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputTemplate(
                          controller: firstNameController,
                          hint: "Nom",
                          isHalfWIdth: true,
                          savedCallback: (value) {
                            firstNameController.text = value;
                          }),
                      Container(
                        width: 1.0,
                        height: 45,
                        color: Colors.grey[500],
                      ),
                      InputTemplate(
                          controller: lastNameController,
                          hint: "Prénom",
                          isHalfWIdth: true,
                          savedCallback: (value) {
                            lastNameController.text = value;
                          }),
                    ],
                  )),
              SafeArea(
                minimum: const EdgeInsets.symmetric(horizontal: 0.0),
                child: InputTemplate(
                    controller: birthdayController,
                    hint: "Date de naissance",
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                    ),
                    savedCallback: (value) {
                      birthdayController.text = value;
                    },
                    isDatePicker: true,
                    isHalfWIdth: false),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Radio(
                          value: sexe,
                          groupValue: sexeF,
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              sexe = sexeF;
                            });
                          }),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              sexe = sexeF;
                            });
                          },
                          child: Text(
                            sexeF,
                            style: TextStyle(
                                color: sexe == sexeF ? primaryColor : textColor,
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: sexe,
                          groupValue: sexeH,
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              sexe = sexeH;
                            });
                          }),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              sexe = sexeH;
                            });
                          },
                          child: Text(
                            sexeH,
                            style: TextStyle(
                                color: sexe == sexeH ? primaryColor : textColor,
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(primaryColor),
                      fixedSize: MaterialStateProperty.all(Size(
                          MediaQuery.of(context).size.width * 0.8,
                          MediaQuery.of(context).size.height * 0.04))),
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontFamily,
                        fontSize: 14.0),
                  )),
              const SizedBox(
                height: 16.0,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Chat()));
                  },
                  child: const Text("Connectez-vous",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 13.0,
                          color: textColor,
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
