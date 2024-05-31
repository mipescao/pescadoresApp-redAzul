
import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class atomButtonGrayForm extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? colorBackground;
  final Color? colorLetter;
  const atomButtonGrayForm({super.key, required this.text, required this.onPressed, this.colorBackground, this.colorLetter});

  @override
  State<atomButtonGrayForm> createState() => _atomButtonGrayFormState();
}

class _atomButtonGrayFormState extends State<atomButtonGrayForm> {
  @override
  Widget build(BuildContext context) {

    bool onpresedNull = false;

    if(widget.onPressed != null){
      onpresedNull = false;
    }else{
      onpresedNull = true;
    }

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          // BoxShadow(
          //   color: Colors.black.withOpacity(0.2),
          //   spreadRadius: 2,
          //   blurRadius: 5,
          //   offset: Offset(0, 3),
          // ),
        ],
      ),
      child: ElevatedButton(
        style: onpresedNull ?  
            ElevatedButton.styleFrom(
              elevation: 8,
              shadowColor: colores.gray1,
              backgroundColor: Color(0xffCCCCCC),
              padding: EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )
            ) :
            ElevatedButton.styleFrom(
              elevation: 8,
              shadowColor: colores.gray1,
              backgroundColor: widget.colorBackground == null ? Color(0xff0071BC) : widget.colorBackground,
              padding: EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )
            ),
        onPressed: onpresedNull ? (){
          noSendForm(context);
        } : widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(fontFamily: "NunitoBold", fontSize: scaledFontSize(22.0), color: widget.colorLetter == null ? colores.white: widget.colorLetter),
        ),
      ),
    );
  }
}

noSendForm(context){
  return showDialog(
    context: context,
    barrierDismissible: false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
    builder: (BuildContext context) {
      return BackButtonInterceptorShow(
        child: CustomModal(
          title: 'No se puede enviar este formulario',
          descripcion:
              'Verifica que hayas diligenciado correctamente todos los datos',
          imagen: 'assets/infoAlert.png',
          textoboton1: '',
          funcion1: noFunction,
          textoboton2: 'Cerrar',
          funcion2: alertmodalclose,
        ),
      ); // Usar el widget de la modal personalizada
    },
  );
}