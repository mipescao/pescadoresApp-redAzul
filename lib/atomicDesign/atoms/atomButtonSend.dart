import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff0071BC),
            padding: EdgeInsets.only(top: 12, left: 22, right: 22, bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          widget.function(context);
        },
        child: Text(
          widget.text,
          style: TextStyle(fontFamily: "NunitoBold", fontSize: 24.0),
        ),
      ),
    );
  }
}
