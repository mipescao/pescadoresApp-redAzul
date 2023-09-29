import 'package:flutter/material.dart';

// Color colorList = Colors.transparent;
// Color colorText = Color(0xff707070);

class atomOptionsCheckbox extends StatefulWidget {
  final String text;
  final ValueChanged<bool?> onChanged;

  const atomOptionsCheckbox(
      {super.key,
      required this.text,
      required this.onChanged,});

  @override
  State<atomOptionsCheckbox> createState() => _atomOptionsCheckboxState();
}

class _atomOptionsCheckboxState extends State<atomOptionsCheckbox> {

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
          widget.onChanged(_isChecked);
        });
      },
      child: Container(
          decoration: BoxDecoration(
            border: const Border(
              bottom: BorderSide(
                width: 1.5, // Grosor del borde inferior
              ),
            ),
            // borderRadius: BorderRadius.circular(15.0),
            color: _isChecked ?Color(0xff29ABE2) :Colors.transparent,
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
                      widget.onChanged(_isChecked);
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
                      color: _isChecked ?Color(0xffffffff) :Color(0xff707070),
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
