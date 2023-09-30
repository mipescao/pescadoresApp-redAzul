import 'package:flutter/material.dart';

final String inputSelect = 'Canoa';

bool visible = false;

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  String selectedOption = 'Option 1';

  void toggleVisibility() {
    setState(() {
      visible = !visible;
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            toggleVisibility();
          });

        },
      child: Column(
        children: [
          
          Container(
            width: 400.0,
            height: 45.0,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20.0), // Agrega el border-radius deseado
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
              maxWidth: MediaQuery.of(context).size.width * 0.90
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
                      color:
                          Colors.transparent, // Cambiar el color de la flecha a azul
                    ),
                    Spacer(),
                    Text(inputSelect, style: TextStyle(color: Color(0xff0095CD), fontSize: 18.0),),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
                      color:
                          Color(0xff0071BC), // Cambiar el color de la flecha a azul
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
                visible: visible,
                child: Column(
                  children: [
                    optionsSelect()
                  ],
                ),
              ),
        ],
      ),
    );
}
}

Widget optionsSelect(){
  print("object");
  return Container(
    child: Text("datas "),
  );
}

Widget close(){
  print("object");
  return Container(
    child: Text("data"),
  );
}