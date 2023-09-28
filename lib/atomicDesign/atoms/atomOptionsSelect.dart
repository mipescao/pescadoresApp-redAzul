import 'package:flutter/material.dart';

class atomOptionsSelect extends StatefulWidget {
  const atomOptionsSelect({super.key});

  @override
  State<atomOptionsSelect> createState() => _atomOptionsSelectState();
}

class _atomOptionsSelectState extends State<atomOptionsSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(15.0)),
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Soy cabeza de hogar",
        style: TextStyle(
          color: Color(0xff707070),
          fontSize: 22.0,
          fontFamily: 'nunitoBold',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
