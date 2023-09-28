import 'package:flutter/material.dart';

class atomSubtitle extends StatefulWidget {

  final String subtitle;

  const atomSubtitle({super.key, required this.subtitle});


  @override
  State<atomSubtitle> createState() => _atomSubtitleState();
}

class _atomSubtitleState extends State<atomSubtitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.95
        ),
        child: Text(
          widget.subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontFamily: "NunitoBold",
            fontWeight: FontWeight.normal,
            color: Color(0xff0095CD)
          ),
        ),
    );
  }
}