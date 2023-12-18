import 'package:flutter/material.dart';
import 'package:pescadores/styles/globalStyles.dart';

class atomButtonForm extends StatefulWidget {
  final String text;
  final Function function;
  const atomButtonForm({super.key, required this.text, required this.function});

  @override
  State<atomButtonForm> createState() => _atomButtonFormState();
}

class _atomButtonFormState extends State<atomButtonForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 8.0,
            backgroundColor: Color(0xff0071BC),
            padding: EdgeInsets.only(top: 12, left: 22, right: 22, bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            )),
        onPressed: () {
          widget.function(context);
        },
        child: Text(
          widget.text,
          style: TextStyle(fontFamily: "NunitoBold", fontSize: scaledFontSize(24.0), color: colores.white),
        ),
      ),
    );
  }
}
