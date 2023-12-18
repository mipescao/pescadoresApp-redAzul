import 'package:flutter/material.dart';
import 'package:pescadores/styles/globalStyles.dart';
class atomButtonOptions extends StatefulWidget {
  final String text;
  final String image;
  final double widthImage;
  final Color colorButton;
  final Function function;

  const atomButtonOptions(
      {super.key,
      required this.text,
      required this.function,
      required this.image,
      required this.widthImage,
      required this.colorButton});

  @override
  State<atomButtonOptions> createState() => _atomButtonOptionsState();
}

class _atomButtonOptionsState extends State<atomButtonOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      // height: 90.0,
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
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.90),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.colorButton,
            padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          widget.function(context);
        },
        icon: Container(
          width: widget.widthImage,
          child:Image.asset(
            widget.image,
          ),
          
        ),
        label: Container(
          width: 330,
          constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.85),
          child: Text(
            textAlign: TextAlign.center,
            widget.text,
            style: TextStyle(fontFamily: "NunitoBold", fontSize: scaledFontSize(22.0), fontWeight: FontWeight.bold, color: colores.white),
          ),
        ),
      ),
    );
  }
}
