import 'package:flutter/material.dart';

class atomInputForm extends StatefulWidget {
  final TextEditingController controllerInput;
  final String textInput;
  final Icon icon;
  const atomInputForm(
      {super.key,
      required this.controllerInput,
      required this.textInput,
      required this.icon});

  @override
  State<atomInputForm> createState() => _atomInputFormState();
}

class _atomInputFormState extends State<atomInputForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 45.0,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius:
            BorderRadius.circular(24.0), // Agrega el border-radius deseado
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
        controller: widget.controllerInput,
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xff0071BC)),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Padding(
              padding: EdgeInsets.only(
                  left: 15), // Agregar padding a la izquierda del Icon
              child: widget.icon),
          hintText: widget.textInput,
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
          suffixIcon: Icon(
            Icons.visibility_off,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class atomInputFormPassword extends StatefulWidget {
  final TextEditingController controllerInput;
  final String textInput;
  final Icon icon;

  const atomInputFormPassword(
      {super.key,
      required this.controllerInput,
      required this.textInput,
      required this.icon});

  @override
  State<atomInputFormPassword> createState() => _atomInputFormPasswordState();
}

class _atomInputFormPasswordState extends State<atomInputFormPassword> {
  bool statePassword = true;
  Icon passwordIcon = Icon(Icons.visibility_off, color: Color(0xff0071BC));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 45.0,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius:
            BorderRadius.circular(24.0), // Agrega el border-radius deseado
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
        controller: widget.controllerInput,
        textAlign: TextAlign.center,
        obscureText: statePassword,
        style: TextStyle(color: Color(0xff0071BC)),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Padding(
              padding: EdgeInsets.only(
                  left: 15), // Agregar padding a la izquierda del Icon
              child: widget.icon),
          hintText: widget.textInput,
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
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  viewPassword();
                });
                // Agrega aquí la función que deseas ejecutar al tocar el icono
              },
              child: passwordIcon),
        ),
      ),
    );
  }

  // funcion para cambiar el estado del input de borrar
  viewPassword() {
    if (statePassword == false) {
      statePassword = true;
      passwordIcon = Icon(Icons.visibility_off, color: Color(0xff0071BC));
    } else if (statePassword == true) {
      statePassword = false;
      passwordIcon = Icon(Icons.visibility, color: Color(0xff0071BC));
    }
  }
}

class atomInputForm80 extends StatefulWidget {
  final TextEditingController controllerInput;
  final String textInput;
  final Icon icon;
  const atomInputForm80(
      {super.key,
      required this.controllerInput,
      required this.textInput,
      required this.icon});

  @override
  State<atomInputForm80> createState() => _atomInputForm80State();
}

class _atomInputForm80State extends State<atomInputForm80> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 45.0,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.70),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius:
            BorderRadius.circular(24.0), // Agrega el border-radius deseado
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
        controller: widget.controllerInput,
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xff0071BC)),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Padding(
              padding: EdgeInsets.only(
                  left: 15), // Agregar padding a la izquierda del Icon
              child: widget.icon),
          hintText: widget.textInput,
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
          suffixIcon: Icon(
            Icons.visibility_off,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
