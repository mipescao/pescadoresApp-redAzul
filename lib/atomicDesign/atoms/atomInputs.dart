import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';


// Parametros
// Obligatorios
// TextInput: Nombre del input
// typeKey: Tipo de teclado que se quiere mostrar (numerorico, texto, etc.)
// Opcionales
// ControllerInput: Controlador del input
// icon: Icono del input
// onchanged: funcion que se ejecutara cuando se escriba algo en el input
// widthInput: Ancho del input
// viewIcons: Si se quiere quitar el espacio que ocupa el input
// textRequired: Si se quiere cambiar el texto que viene por defecto en el input que dice: "Este campo es obligatorio"
// maxLengthInput: Maximo de caracteres que recibe el input
// maxLineInput: Si quieres que el input pueda crecer con la cantidad del texto (Boolean)
// heightInput: Alto del input

class atomInputsForm extends StatefulWidget {
  final TextEditingController? controllerInput;
  final String textInput;
  final Icon? icon;
  final TextInputType typeKey;
  final Function(String)? onChanged;
  final errorText;
  final double? widthInput;
  final bool? viewIcons;
  final String? textRequired;
  final int? maxLengthInput;
  final bool? maxLineNull;
  final double? heightInput;
  final Function(String)? validator;
  final Function(String?)? onSaved;
  final bool? enabled;

  const atomInputsForm(
      {super.key,
      this.controllerInput,
      required this.textInput,
      this.icon,
      required this.typeKey, 
      this.onChanged, 
      this.errorText,
      this.widthInput,
      this.viewIcons,
      this.textRequired,
      this.maxLengthInput,
      this.maxLineNull,
      this.heightInput,
      this.validator,
      this.onSaved,
      this.enabled
      });

  @override
  State<atomInputsForm> createState() => _atomInputsFormState();
}

class _atomInputsFormState extends State<atomInputsForm> {
  Color _verifyRequiered = Color(0xff0095CD).withOpacity(0.5);

  @override
  Widget build(BuildContext context) {

    bool errorExist = false;

    bool viewIcons1 = widget.viewIcons != null ? false : true;

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
              height: widget.heightInput != null ? widget.heightInput : null ,
              width: widget.widthInput ?? 400.0,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90,),
              decoration: styleInputs.decorationInputs,
              child: TextFormField(
                enabled: widget.enabled ?? true,
                maxLines: widget.maxLineNull != null && widget.maxLineNull == true ? null : 1,
                keyboardType: widget.typeKey,
                controller: widget.controllerInput ?? null,
                onChanged: widget.onChanged,
                validator: validateEMail,
                onSaved: widget.onSaved,
                maxLength: widget.maxLengthInput ?? null,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal),
                cursorColor: colores.blue1,
                decoration: InputDecoration(
                  counterText: '',
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: viewIcons1 ? Padding(
                      padding: EdgeInsets.only(
                          left: 15), // Agregar padding a la izquierda del Icon
                      child: widget.icon): null,
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
                  suffixIcon: viewIcons1 ? Icon(
                    Icons.visibility_off,
                    color: Colors.transparent,
                  ) : null,
                  labelText:  errorExist ? widget.errorText  : widget.textRequired != null ? widget.textRequired : 'Este campo es obligatorio',
                  labelStyle: errorExist ?  TextStyle(color: colores.orange, fontSize:scaledFontSize(20.0), backgroundColor: colores.white,) : TextStyle(color: colores.gray4, fontSize:scaledFontSize(20.0), backgroundColor: colores.white,),
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
  
  test() {
    return null;
  }

  String? validateEMail(String? value) {
    print(value);
    widget.validator!(value!);
  }
}


// Input completos
// Son los inputs que se usan para mostrar campos que no se pueden modificar
// 
// Parametros
  // Obligatorios
    // TextInput: Nombre del  input (Texto que saldra en la parte superior del input) (String)
    // valueInput: Valor que va a mostrar el input (String)
  // Opcionales:
  // controllerInput: Controlador de input para cuando se quiera editar el valor de input
  // icon: Si se quiere mostrar algun icono en el input
  // functionClick: Para ejecutar una funcion cuando se clicke el input
  // widthInput: Ancho  del input

  // Ejemplo
    // atomInputComplete(
    //   controllerInput: redAzulSerial,
    //   textInput: 'Serial del lote',
    //   valueInput: "AAAA123456"
    // ),
//  -------------------

class atomInputComplete extends StatefulWidget {
  final TextEditingController? controllerInput;
  final String textInput;
  final Icon? icon;
  final String valueInput;
  final Function? functionClick;
  final double? widthInput;


  const atomInputComplete(
      {super.key,
      this.controllerInput,
      required this.textInput,
      required this.valueInput,
      this.icon,
      this.functionClick,
      this.widthInput,
    });

  @override
  State<atomInputComplete> createState() => _atomInputCompleteState();
}

class _atomInputCompleteState extends State<atomInputComplete> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.functionClick != null ? (){
        widget.functionClick!();
      } : null, 
      child: Container(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        width: widget.widthInput ?? 400.0,
        // height: scaledFontSize(47.0),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.90,),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:
              BorderRadius.circular(24.0),
          border: Border.all(
            color: colores.gray2.withOpacity(0.8), // Color del borde
            width: 1.0, // Ancho del borde
          ),
        ),
        child: TextFormField(
          maxLines: null,
          enabled: false,
          controller: widget.controllerInput ?? null,
          cursorColor: colores.blue1,
          keyboardType: TextInputType.multiline,
          textAlign: TextAlign.center,
          style: TextStyle(color: colores.gray2),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            // prefixIcon: Padding(
            //     padding: EdgeInsets.only(
            //         left: 15), // Agregar padding a la izquierda del Icon
            //     child: widget.icon != null ? widget.icon : Icon(Icons.visibility_off, color: Colors.transparent)),
            hintText: widget.valueInput,
            hintStyle: TextStyle(
                color: colores.gray2,
                fontSize:  scaledFontSize(20.0),
                fontFamily: "NunitoRegular",
                fontWeight: FontWeight.normal),
            filled: true,
            fillColor: Color(0xffffffff),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              borderSide: BorderSide.none,
            ),
            // suffixIcon: Icon(
            //   Icons.visibility_off,
            //   color: Colors.transparent,
            // ),
            labelText: widget.textInput,
            labelStyle: TextStyle(color: colores.blue1, fontSize:scaledFontSize(22.0), backgroundColor: colores.white, fontFamily: 'nunitoBold', fontWeight: FontWeight.bold),
            floatingLabelAlignment: FloatingLabelAlignment.center,
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
      ),
    );
  }
}


class atomInputFormPassword extends StatefulWidget {
  final TextEditingController? controllerInput;
  final String textInput;
  final Icon icon;
  final Function(String)?  onChanged;
  final String? errorText;

  const atomInputFormPassword(
      {super.key,
      this.controllerInput,
      required this.textInput,
      required this.icon,
      this.onChanged,
      this.errorText
      });

  @override
  State<atomInputFormPassword> createState() => _atomInputFormPasswordState();
}


class _atomInputFormPasswordState extends State<atomInputFormPassword> {
  bool statePassword = true;
  Icon passwordIcon = Icon(Icons.visibility_off, color: Color(0xff0071BC));

  @override
  Widget build(BuildContext context) {

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

    return Container(
      width: 400.0,
      // height: scaledFontSize(47.0),
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
        controller: widget.controllerInput ?? null,
        onChanged: widget.onChanged,
        textAlign: TextAlign.center,
        cursorColor: colores.blue1,
        obscureText: statePassword,
        style: TextStyle(fontSize:  scaledFontSize(20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Padding(
              padding: EdgeInsets.only(
                  left: 15), // Agregar padding a la izquierda del Icon
              child: widget.icon),
          hintText: widget.textInput,
          hintStyle: TextStyle(
              color: Color(0xff0095CD).withOpacity(0.5),
              fontSize:  scaledFontSize(20.0),
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
            borderSide: BorderSide.none
          ),
          labelText:  errorExist ? widget.errorText  : 'Este campo es obligatorio',
          labelStyle: errorExist ?  TextStyle(color: colores.orange, fontSize:scaledFontSize(22.0), backgroundColor: colores.white,) : TextStyle(color: colores.gray4, fontSize:scaledFontSize(22.0), backgroundColor: colores.white,),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                viewPassword();
              });
              // Agrega aquí la función que deseas ejecutar al tocar el icono
            },
            child: passwordIcon
          ),
              // errorText: widget.errorText
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