import 'package:flutter/material.dart';

// Color colorList = Colors.transparent;
// Color colorText = Color(0xff707070);

class atomOptionsCheckbox extends StatefulWidget {
  final String text;
  final bool variableValue;
  final ValueChanged<bool?> onChanged;

  const atomOptionsCheckbox(
      {super.key,
      required this.text,
      required this.variableValue,
      required this.onChanged,});

  @override
  State<atomOptionsCheckbox> createState() => _atomOptionsCheckboxState();
}

class _atomOptionsCheckboxState extends State<atomOptionsCheckbox> {

  bool _isChecked = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _isChecked = widget.variableValue;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = widget.variableValue;
          widget.onChanged(widget.variableValue);
        });
        print(widget.variableValue);
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
            color: widget.variableValue ?Colors.transparent :Color(0xff29ABE2),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                      widget.onChanged(value);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: 260.0,
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.variableValue ?Color(0xff707070) :Color(0xffffffff),
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
