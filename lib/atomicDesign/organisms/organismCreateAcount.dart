import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismCreateAcount extends StatefulWidget {
  const organismCreateAcount({super.key});

  @override
  State<organismCreateAcount> createState() => _organismCreateAcountState();
}

class _organismCreateAcountState extends State<organismCreateAcount> {

  // Variables del  formulario
  final _formKeyRegister = GlobalKey<FormState>();
        // Inputs validation

  final myControllerCorreoRegister = TextEditingController();
  final myControllerPasswordRegister = TextEditingController();
  final myControllerConfirmPasswordRegister = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return  Form(
      key: _formKeyRegister,
      child: Container(
        constraints: BoxConstraints(
          minHeight: checkHeightScreen(context) ,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              // child: atomLogoRedAzul(
              //   widthLogo: MediaQuery.of(context).size.width * 0.75,
              // ),
              child: Image.asset(
                'assets/images/logo-RedAzul.png',
                width: MediaQuery.of(context).size.width * 0.75 ,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: atomTitle(title: 'Has iniciado tu registro como pescador', colorTitle:colores.blue1,),
            ),
      
      
              // Column(
              //   children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: atomInputsForm(
                controllerInput: myControllerCorreoRegister,
                textInput: 'Correo electronico',
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
              child: atomInputFormPassword(
                  controllerInput:myControllerPasswordRegister,
                  textInput: "Contraseña",
                  icon: Icon(Icons.password, color: Color(0xff0071BC)),
                  onChanged:(value){
                  },
                  
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: Column(
                children: [
                  atomInputFormPassword(
                      controllerInput:myControllerConfirmPasswordRegister ,
                      textInput: "Confirmar contraseña",
                      icon: Icon(Icons.password, color: Color(0xff0071BC)),
                      onChanged:(value){
                        setState(() {
                          
                        });
                      },
                  ),
                  SizedBox(height: 10.0),
                  atomText(text: 'Usa 8 o más caracteres con una combinación de letras, números y símbolos.'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: atomButtonGrayForm(text: "Crear Cuenta", onPressed: (){
                
                Navigator.pushNamed(context, '/codeVerification');
              }),
            ),
            //     ],
              
            // ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text(
                          "¿Tienes una cuenta?",
                          style: TextStyle(
                              color: Color(0xff0095CD),
                              fontSize: 22.0,
                              fontFamily: "NunitoRegular",
                              fontWeight: FontWeight.normal),
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("goLogin");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              color: Color(0xff0095CD), // Color del borde inferior
                              width: 2.0, // Grosor del borde inferior
                            ),
                          )),
                          child: Text(
                            "Ingresa",
                            style: TextStyle(
                                color: Color(0xff0095CD),
                                fontSize: 22.0,
                                fontFamily: "nunitoBold",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
            ),
          ]
        ),
    )
    );
  }
}