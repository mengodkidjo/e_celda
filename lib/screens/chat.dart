import 'package:e_celda/components/message_template.dart';
import 'package:e_celda/screens/inscription.dart';
import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: const BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.75))
              ], color: Colors.white),
              padding: const EdgeInsets.only(top: 38.0, left: 0.0, right: 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Inscription()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: primaryColor,
                      )),
                  const CircleAvatar(
                    backgroundImage: AssetImage(imageProfile),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: textColor),
                      ),
                      Text(
                        "Il y a 2min",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: textColor),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "28 Mars 2022",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return MessageTemplate(
                              isSender: index % 2 != 0 ? false : true,
                              message: messages.elementAt(index),
                              sendTime: hours.elementAt(index));
                        }),
                  ),
                  SafeArea(
                      minimum: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: TextField(
                                cursorColor: primaryColor,
                                controller: messageController,
                                decoration: const InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    hintText: "Votre message",
                                    hintStyle: inputMessageHintStyle,
                                    fillColor: primaryColor,
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.add_circle,
                                      color: Colors.white,
                                    )),
                              )),
                          Container(
                              width: 48,
                              height: 48,
                              decoration: const BoxDecoration(
                                  color: primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: const Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 18.0,
                              ))
                        ],
                      ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
