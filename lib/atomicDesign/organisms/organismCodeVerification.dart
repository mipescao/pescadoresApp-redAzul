import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismCodeVerification extends StatefulWidget {
  const organismCodeVerification({super.key});

  @override
  State<organismCodeVerification> createState() => _organismCodeVerificationState();
}

class _organismCodeVerificationState extends State<organismCodeVerification> {
  
  final myControllerCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
          constraints: BoxConstraints(
            minHeight: checkHeightScreen(context)
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                child: Image.asset(
                  'assets/images/logo-RedAzul.png',
                  width: MediaQuery.of(context).size.width * 0.75 ,
                ),
              ),
              Text('Hemos enviado un código de verificación a tu correo electrónico. Por favor ingrésalo.', style: textAll.titleBlueLight,textAlign: TextAlign.center,),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                child: atomInputsForm(
                  controllerInput: myControllerCode,
                  textInput: 'Codigo de verificación',
                  typeKey: TextInputType.emailAddress,
                  icon: Icon(Icons.mail, color: Color(0xff0071BC)),
                  onChanged: (value){
                    setState(() {
                      
                    });
                  },

                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                child: atomButtonGrayForm(text: "Verificar", onPressed: (){
                  verifyCode();
                }),
              ),

              GestureDetector(
                onTap: (){
                  // reSend(context);
                  verifyCode();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff707070), // Color del borde inferior
                        width: 2.0, // Grosor del borde inferior
                      ),
                    )
                  ),
                  child: Text(
                    "Reenviar código",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 22.0,
                      fontFamily: "NunitoRegular",
                      fontWeight: FontWeight.normal,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/back.png',
                        width: 36.0,
                      ),
                      SizedBox(width: 10.0 ,),
                      Text(
                        "Volver",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0,
                            fontFamily: "NunitoBold",
                            fontWeight: FontWeight.bold,
                            color: Color(0xff707070)
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () async {
                }
              ),
            
              Container(
                height: 0.0,
              )

            ]
          )

    );
  }

  verifyCode(){
    showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModal(
            title: 'Correo verificado correctamente',
            descripcion:
                'Dale aceptar para continuar',
            imagen: 'assets/successAlert.png',
            textoboton1: '',
            funcion1: noFunction,
            textoboton2: 'Aceptar',
            funcion2: goTerms,
          ),
        ); // Usar el widget de la modal personalizada
      },
    );
  }

  reSendCode(){
    showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModal(
            title: 'Correo reenviado correctamente',
            descripcion:
                'Dale aceptar para continuar',
            imagen: 'assets/successAlert.png',
            textoboton1: '',
            funcion1: noFunction,
            textoboton2: 'Aceptar',
            funcion2: alertmodalclose,
          ),
        ); // Usar el widget de la modal personalizada
      },
    );
  }

  goTerms(context1){
    Navigator.pushNamed(context, '/termsAndConditions');
  }
}

