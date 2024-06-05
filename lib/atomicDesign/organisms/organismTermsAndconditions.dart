import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomLogo.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomTerms.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';

class organismTermsAndconditions extends StatefulWidget {
  const organismTermsAndconditions({super.key});

  @override
  State<organismTermsAndconditions> createState() => _organismTermsAndconditionsState();
}

class _organismTermsAndconditionsState extends State<organismTermsAndconditions> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: (MediaQuery.of(context).size.height * 0.965),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
                // child: atomLogoRedAzul(
                //   widthLogo: MediaQuery.of(context).size.width * 0.75,
                // ),
                child: Image.asset(
                  'assets/images/logo-RedAzul.png',
                  width: MediaQuery.of(context).size.width * 0.40 ,
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.95,
                ),
                child: atomTitle( title: 'Autorización del tratamiento de datos personales', colorTitle: colores.blue2, )),
              atomTerms(),
              atomButtonGrayForm(
                text: "Acepto",
                onPressed: () async {
                  aceptTerms(context);
                },
              ),

              // atomLogoutRegister(),
              Container(height: 0.0,)
            ],
          ),
    );
  }

  aceptTerms(context1){
    showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModal(
            title: 'Terminos y condiciones aceptados correctamente',
            descripcion:
                'Dale aceptar para continuar',
            imagen: 'assets/successAlert.png',
            textoboton1: '',
            funcion1: noFunction,
            textoboton2: 'Aceptar',
            funcion2: gounapAuthorization,
          ),
        ); // Usar el widget de la modal personalizada
      },
    );
  }

  gounapAuthorization(context1){
    
    Navigator.pushNamed(context, '/unapAuthorization');
  }
}