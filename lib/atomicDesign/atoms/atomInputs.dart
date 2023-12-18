import 'package:flutter/material.dart';
import 'package:pescadores/styles/globalStyles.dart';

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


class atomInputRequiredForm extends StatefulWidget {
  final TextEditingController controllerInput;
  final String textInput;
  final Icon? icon1;
  final Icon? icon2;
  final TextInputType typeKey;
  final bool? inputPassw;
  final Function(String)? onChanged;
  final errorText;
  final bool? requiredInput;

  const atomInputRequiredForm(
      {super.key,
      required this.controllerInput,
      required this.textInput,
      this.icon1,
      this.icon2,
      required this.typeKey, 
      this.inputPassw,
      this.onChanged, 
      this.errorText,
      this.requiredInput
    }
  );

  @override
  State<atomInputRequiredForm> createState() => _atomInputRequiredFormState();
}

class _atomInputRequiredFormState extends State<atomInputRequiredForm> {
  Color _verifyRequiered = Color(0xff0095CD).withOpacity(0.5);
  bool statePassword = true;
  Icon? passwordIcon;

  @override
  Widget build(BuildContext context) {

    passwordIcon = widget.icon2 != null ? widget.icon2 : Icon(Icons.visibility_off, color: Colors.transparent);

    bool errorExist = false;

    if(widget.errorText == null){
      setState(() {
        errorExist = false;
      });
    }else{
      setState(() {
        errorExist = true;
      });
    }

    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 400.0,
              // height: scaledFontSize(47.0),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.90),
              decoration: styleInputs.decorationInputs,
              child: TextFormField(
                keyboardType: widget.typeKey,
                controller: widget.controllerInput,
                obscureText: widget.inputPassw != null && widget.inputPassw != false ? statePassword : false ,
                onChanged: widget.onChanged,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal),
                cursorColor: colores.blue1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                        left: 15), // Agregar padding a la izquierda del Icon
                    child: widget.icon1 != null ? 
                      widget.icon1 
                        : 
                      Icon(
                        Icons.visibility_off,
                        color: Colors.transparent,
                      ),
                  ),
                  hintText: widget.textInput,
                  hintStyle: TextStyle(
                      color: _verifyRequiered,
                      fontSize: scaledFontSize(20.0),
                      fontFamily: "NunitoRegular",
                      fontWeight: FontWeight.normal),
                  filled: true,
                  fillColor: Color(0xffffffff),
                  focusedBorder: errorExist ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: colores.orange, // Cambia el color del borde al hacer clic en el campo
                    ),
                  ) : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.transparent, //
                    ),),

                  enabledBorder:  errorExist ?  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: colores.orange)
                    ) : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  // suffixIcon: widget.icon2 != null ? widget.icon2 : Icon(
                  //   Icons.visibility_off,
                  //   color: Colors.transparent,
                  // ),
                  suffixIcon: widget.inputPassw != null && widget.inputPassw != false ? 
                  GestureDetector(
                    onTap: () {
                      if (statePassword == false) {
                        setState(() {
                          statePassword = true;
                          passwordIcon = Icon(Icons.visibility_off, color: Color(0xff0071BC));
                        });
                      } else if (statePassword == true) {
                        setState(() {
                          statePassword = false;
                          passwordIcon = Icon(Icons.visibility, color: Color(0xff0071BC));
                        });
                        
                      }
                      // setState(() {
                      //   viewPassword();
                      // });
                      // Agrega aquí la función que deseas ejecutar al tocar el icono
                    },
                    child: passwordIcon
                  )
                  : passwordIcon,
                  labelText: widget.requiredInput == null && widget.requiredInput != true ? errorExist ? widget.errorText  : 'Este campo es óbligatorio' : "",
                  labelStyle: errorExist ?  TextStyle(color: colores.orange, fontSize:scaledFontSize(20.0), backgroundColor: colores.white,) : TextStyle(color: colores.gray4, fontSize:22, backgroundColor: colores.white),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
              
                ),
              ),
            ),
          ],
        ),
      ],
    );

  }
}