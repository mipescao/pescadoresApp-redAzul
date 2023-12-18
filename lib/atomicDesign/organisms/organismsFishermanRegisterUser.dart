import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoMipescao.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeInputsRegister.dart';
import 'package:pescadores/styles/globalStyles.dart';

class organismsFishermanRegisterUser extends StatefulWidget {
  const organismsFishermanRegisterUser({super.key});

  @override
  State<organismsFishermanRegisterUser> createState() =>
      _organismsFishermanRegisterUserState();
}

class _organismsFishermanRegisterUserState
    extends State<organismsFishermanRegisterUser> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GestureDetector(
          child: Container(
            constraints: BoxConstraints(
              minHeight: getSafeAreaHeight(context),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: atomLogoRedAzul(
                    heightImg: 88.0,
                  ),
                ),
                atomTitle(title: "Haz iniciado tu registro como pescador"),
                
                moleculeInputsRegister(),
                atomButtonForm(
                  text: "Crear cuenta",
                  function: sendForm,
                ),
                Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Text(
                        "¿Tienes una cuenta?",
                        style: TextStyle(
                            color: Color(0xff0095CD),
                            fontSize: 20.0,
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
                              fontSize: 20.0,
                              fontFamily: "nunitoBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 10.0),
                  child: atomLogoMipescao(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
