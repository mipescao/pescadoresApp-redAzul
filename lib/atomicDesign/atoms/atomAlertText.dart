import 'package:flutter/material.dart';

class atomAlertText extends StatefulWidget {
  final String text;

  const atomAlertText({super.key, required this.text});

  @override
  State<atomAlertText> createState() => _atomAlertTextState();
}

class _atomAlertTextState extends State<atomAlertText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.95),
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25.0,
            fontFamily: "NunitoBold",
            fontWeight: FontWeight.w500,
            color: Color(0xffF96C00)),
      ),
    );
  }
}
