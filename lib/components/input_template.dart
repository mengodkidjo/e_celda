import 'package:e_celda/utils/constante.dart';
import 'package:flutter/material.dart';

class InputTemplate extends StatefulWidget {
  const InputTemplate(
      {Key? key,
      required this.controller,
      required this.hint,
      this.icon,
      required this.isHalfWIdth,
      this.tapCallback,
      this.isDatePicker,
      required this.savedCallback})
      : super(key: key);
  final TextEditingController controller;
  final String hint;
  final Widget? icon;
  final bool isHalfWIdth;
  final Function(String)? tapCallback;
  final Function(String) savedCallback;
  final bool? isDatePicker;

  @override
  State<InputTemplate> createState() => _InputTemplateState();
}

class _InputTemplateState extends State<InputTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.isHalfWIdth
            ? MediaQuery.of(context).size.width * 0.45
            : MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: TextField(
          cursorColor: primaryColor,
          controller: widget.controller,
          onTap: () async {
            if (widget.isDatePicker != null && widget.isDatePicker == true) {
              DateTime? selected = await showDatePicker(
                context: context,
                initialDate: DateTime(2000),
                firstDate: DateTime(1980),
                lastDate: DateTime(2099),
              );
              if (selected != null) {
                widget.savedCallback(
                    "${selected.day}/${selected.month}/${selected.year}");
              }
            }
          },
          onSubmitted: (value) => widget.savedCallback(value),
          decoration: InputDecoration(
              border: const UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              hintText: widget.hint,
              hintStyle: inputHintStyle,
              fillColor: Colors.grey[100],
              filled: true,
              suffixIcon: widget.icon),
        ));
  }
}
