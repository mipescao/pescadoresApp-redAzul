import 'package:flutter/material.dart';

class atomTitle extends StatefulWidget {
  final String title;

  const atomTitle({super.key, required this.title});

  @override
  State<atomTitle> createState() => _atomTitleState();
}

class _atomTitleState extends State<atomTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      child: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          fontFamily: "NunitoBold",
          fontWeight: FontWeight.bold,
          color: Color(0xff0095CD),
        ),
      ),
    );
  }
}
