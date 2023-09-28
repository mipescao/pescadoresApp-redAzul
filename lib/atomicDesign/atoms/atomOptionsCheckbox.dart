import 'package:flutter/material.dart';

// Color colorList = Colors.transparent;
// Color colorText = Color(0xff707070);

class atomOptionsCheckbox extends StatefulWidget {
  final String text;
  final bool variableValue;
  final String variableName;
  final Function updateVariableValue;
  final Color colorText;
  final Color colorBackground;

  const atomOptionsCheckbox(
      {super.key,
      required this.text,
      required this.variableValue,
      required this.variableName,
      required this.updateVariableValue,
      required this.colorBackground,
      required this.colorText});

  @override
  State<atomOptionsCheckbox> createState() => _atomOptionsCheckboxState();
}

class _atomOptionsCheckboxState extends State<atomOptionsCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.updateVariableValue(widget.variableName, widget.variableValue);
        });
      },
      child: Container(
          // width: 100.0,
          decoration: BoxDecoration(
            border: const Border(
              bottom: BorderSide(
                // color: Color(0xff707070), // Color del borde superior
                width: 1.5, // Grosor del borde inferior
              ),
            ),
            // borderRadius: BorderRadius.circular(15.0),
            color: widget.colorBackground,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Checkbox(
                    value: widget.variableValue,
                    onChanged: (bool? value) {
                      setState(() {
                        widget.updateVariableValue(widget.variableName, value);
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: 260.0,
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.colorText,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                    //
                  ),
                ),
              )
            ],
          )),
    );
  }
}
