import 'package:flutter/material.dart';

class atomInputDouble extends StatefulWidget {
  final TextEditingController controllerInput1;
  final String textInput1;
  final Icon icon1;
  final TextEditingController controllerInput2;
  final String textInput2;
  final Icon icon2;
  const atomInputDouble(
      {super.key,
      required this.controllerInput1,
      required this.textInput1,
      required this.icon1,
      required this.controllerInput2,
      required this.textInput2,
      required this.icon2});

  @override
  State<atomInputDouble> createState() => _atomInputDoubleState();
}

class _atomInputDoubleState extends State<atomInputDouble> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 400.0,
            height: 45.0,
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.43),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                  24.0), // Agrega el border-radius deseado
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              controller: widget.controllerInput1,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff0071BC)),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: widget.textInput1,
                hintStyle: TextStyle(
                    color: Color(0xff0095CD).withOpacity(0.5),
                    fontSize: 18,
                    fontFamily: "NunitoBold",
                    fontWeight: FontWeight.normal),
                filled: true,
                fillColor: Color(0xffffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Container(
            width: 400.0,
            height: 45.0,
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.43),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                  24.0), // Agrega el border-radius deseado
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              controller: widget.controllerInput2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff0071BC)),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: widget.textInput2,
                hintStyle: TextStyle(
                    color: Color(0xff0095CD).withOpacity(0.5),
                    fontSize: 18,
                    fontFamily: "NunitoBold",
                    fontWeight: FontWeight.normal),
                filled: true,
                fillColor: Color(0xffffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
