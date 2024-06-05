import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismAunapAuthorization extends StatefulWidget {
  const organismAunapAuthorization({super.key});

  @override
  State<organismAunapAuthorization> createState() => _organismAunapAuthorizationState();
}

class _organismAunapAuthorizationState extends State<organismAunapAuthorization> {
  bool acceptedTerms = false;
  bool rejectedTerms = false;

  bool optionSelected = false; 


  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: atomTitle(title: '¿Autorizas compartir información relacionada con tu actividad de pesca con la Autoridad Nacional de Pesca (AUNAP)?', colorTitle:colores.blue2,),
            ),

            // Padding(
            //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            //   child: 
            // ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: GestureDetector(
                onTap: (){
                  // Cambia el estado del Checkbox al hacer clic
                  setState(() {
                    if (acceptedTerms == false) {
                      rejectedTerms = false;
                      acceptedTerms = true;
                    }
                    // Este verifica si se puede enviar el formulario
                    optionSelected = true;
                  });
                },
                child: Container(
                  width: 100.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                  border: Border.all(
                    color: colores.blue5, // Color del borde
                    width: 1.0,         // Grosor del borde en píxeles
                  ),
                    borderRadius: BorderRadius.circular(20.0),
                    color: acceptedTerms ? colores.blue5 : colores.white,
                  ),
                  child: Center(child: atomSubtitle( subtitle: 'Sí', colorSubtitle: acceptedTerms ?  colores.white : colores.blue2))),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: GestureDetector(
                onTap: () {
                  // Cambia el estado del Checkbox al hacer clic
                  setState(() {
                    if (rejectedTerms == false) {
                      rejectedTerms = true;
                      acceptedTerms = false;
                    }
                    // Este verifica si se puede enviar el formulario
                    optionSelected = true;
                  });
                },
                child: Container(
                  width: 100.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue, // Color del borde
                    width: 1.0,         // Grosor del borde en píxeles
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  color: rejectedTerms ? colores.blue5 : colores.white,
                  ),
                  child: Center(child: atomSubtitle(subtitle:'No', colorSubtitle: rejectedTerms ? colores.white : colores.blue2 )),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: atomButtonGrayForm(text: "Continuar", onPressed: (){
                goMoreAboutYou(context);
              }),
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
              child: Container(height: 0.0,),
            )
        ],
      ),
    );
  }

  
  goMoreAboutYou(context1){
    Navigator.pushNamed(context, '/moreAboutYou');
  }
}