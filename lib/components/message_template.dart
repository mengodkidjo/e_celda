import 'dart:ui';

import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageTemplate extends StatelessWidget {
  const MessageTemplate(
      {Key? key,
      required this.isSender,
      required this.message,
      required this.sendTime})
      : super(key: key);
  final bool isSender;
  final String message;
  final String sendTime;
  // final bool haveHeader;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.only(
            right: isSender ? 16.0 : 0.0,
            left: !isSender ? 16.0 : 0.0,
            bottom: 16.0),
        child: Row(
          mainAxisAlignment:
              isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                // haveHeader
                //     ? SizedBox(
                //         width: MediaQuery.of(context).size.width,
                //         height: 80,
                //         child: const Text(
                //           "28 Mars 2022",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //               fontFamily: fontFamily,
                //               fontSize: 16.0,
                //               fontWeight: FontWeight.w600,
                //               color: textColor),
                //         ),
                //       )
                //     : const SizedBox(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: isSender ? primaryColor : Colors.grey[200],
                      borderRadius: isSender
                          ? imSenderBorderRadius
                          : imNotSenderBorderRadius),
                  child: Text(
                    message,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 13.0,
                        color: isSender ? Colors.white : textColor),
                  ),
                ),
                Text(
                  sendTime,
                  textAlign: isSender ? TextAlign.end : TextAlign.start,
                  style: const TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ));
  }
}
