import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomCard.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismSelectTypeUser extends StatefulWidget {
  const organismSelectTypeUser({super.key});

  @override
  State<organismSelectTypeUser> createState() => _organismSelectTypeUserState();
}

class _organismSelectTypeUserState extends State<organismSelectTypeUser> {
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
            child: Column(
              children: [
                // Text('Crea tu cuenta', style: textAll.titleBlueLight,textAlign: TextAlign.center,),
                atomTitle(title: 'Crea tu cuenta', colorTitle: colores.blue1,),
                SizedBox(height: 5.0),
                atomText(text: "y se el héroe que le falta al planeta", colorText: colores.blue1, fontSize: scaledFontSize(22.0),)
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: atomSubtitle(subtitle: "Primero dinos que haces en la pesca:" , colorSubtitle: colores.blue1,),
          ),

          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: atomCardRow(
              textInput: 'Soy un pescador',
              colorCard: Color(0xff0071BC),
              imageCard: 'pescador.png',
              fontSize: scaledFontSize(25.0),
              widthImage: 0.20,
              widthText: 0.65,
              nameFunction: () {
                Navigator.pushNamed(context, '/pageCreateAcount');
              },
              completed: false,
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: atomCardRow(
              textInput: 'No pesco pero soy dueño de faenas',
              colorCard: Color(0xff0487D9),
              imageCard: 'engorde.png',
              fontSize: scaledFontSize(25.0),
              widthImage: 0.20,
              widthText: 0.65,
              nameFunction: () {
                Navigator.pushNamed(context, '/pageCreateAcount');
              },
              completed: false,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: atomCardRow(
              textInput: 'Soy una organización de pescadores',
              colorCard: Color(0xff29ABE2),
              imageCard: 'engorde.png',
              fontSize: scaledFontSize(25.0),
              widthImage: 0.20,
              widthText: 0.65,
              nameFunction: () {
                Navigator.pushNamed(context, '/pageCreateAcount');
              },
              completed: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: Container(height: 0,),
          ),
        ],
      ),
    );
  }
}