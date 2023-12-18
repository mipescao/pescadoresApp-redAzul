import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonOptions.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoMipescao.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeButtonsOptions.dart';
import 'package:pescadores/styles/globalStyles.dart';

class organismsCreateAcount extends StatefulWidget {
  const organismsCreateAcount({super.key});

  @override
  State<organismsCreateAcount> createState() => _organismsCreateAcountState();
}

class _organismsCreateAcountState extends State<organismsCreateAcount> {


  @override
  Widget build(BuildContext context) {

    double safeAreaHeight = getSafeAreaHeight(context);

    return Center(
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: safeAreaHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: atomLogoRedAzul(
                    heightImg: 88.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  child: Column(
                    children: [
                      atomTitle(title: "Crea tu cuenta"),
                      SizedBox(height: 10.0),
                      Text(
                        "Y se el heroe que le falta al planeta:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: scaledFontSize(22.0),
                          fontFamily: "NunitoRegular",
                          fontWeight: FontWeight.normal,
                          color: Color(0xff0095CD)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  child: Text(
                    "Primero dinos que haces en la pesca:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: scaledFontSize(22.0),
                      fontFamily: "NunitoSemiBold",
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0095CD)
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  child: atomButtonOptions(
                    text: 'Soy un pescador',
                    function: soyPescador,
                    image: 'assets/images/pescador.png',
                    widthImage: 49.0,
                    colorButton: Color(0xff0071bc)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  child: atomButtonOptions(
                    text: 'No pesco pero soy dueño de faenas',
                    function: OwnerOfFaenas,
                    image: 'assets/images/propietarioFaena.png',
                    widthImage: 42.0,
                    colorButton: Color(0xff0487d9)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  child: atomButtonOptions(
                      text: 'Soy una organización de pescadores',
                      function: fishingOrganization,
                      image: 'assets/images/pescadoresOrganizacion.png',
                      widthImage: 80.0,
                      colorButton: Color(0xff29abe2)),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  child: atomLogoMipescao()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
