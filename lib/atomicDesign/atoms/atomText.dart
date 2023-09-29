import 'package:flutter/material.dart';

class atomText extends StatefulWidget {
  final String text;

  const atomText({super.key, required this.text});

  @override
  State<atomText> createState() => _atomTextState();
}

class _atomTextState extends State<atomText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18.0,
            fontFamily: "NunitoBold",
            fontWeight: FontWeight.normal,
            color: Color(0xff939393)),
      ),
    );
  }
}
