import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomLogo.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class pageMain extends StatefulWidget {
  const pageMain({super.key});

  @override
  State<pageMain> createState() => _pageMainState();
}

class _pageMainState extends State<pageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                child: atomLogoWidth(
                  widthImage: MediaQuery.of(context).size.width * 0.75,
                ),
              ),
              
              Text('MÓDULO DE PESCADORES', style: textAll.titleBlueLight,textAlign: TextAlign.center,),
              SizedBox(
                width: 220.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    shadowColor: Color(0xff29ABE2),
                    backgroundColor: Color(0xff29ABE2),
                    padding: EdgeInsets.only(
                        top: 15, left: 22, right: 22, bottom: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => pageLogin()),
                      // );
                  },
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Iniciar sesión",
                      style: TextStyle(
                        fontFamily: "NunitoBold",
                        fontSize: scaledFontSize(25.0),
                        fontWeight: FontWeight.w900,
                        color: colores.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 220.0,
                // height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    shadowColor: Color(0xff0071BC),
                      backgroundColor: Color(0xff0071BC),
                      padding: EdgeInsets.only(
                          top: 15, left: 22, right: 22, bottom: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/selectTypeUser');
                  },
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Registrate",
                      style: TextStyle(
                        fontFamily: "NunitoBold",
                        fontSize: scaledFontSize(25),
                        fontWeight: FontWeight.w900,
                        color: colores.white,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  atomText(text: 'Desarrollado por:', fontSize: scaledFontSize(16.0),),
                  SizedBox(height: 10.0,),
                  atomLogoRedAzul()
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}