import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/pages/pageCreateAcount.dart';
import 'package:pescadores/styles/globalStyles.dart';

// ignore: camel_case_types
class pageMainPage extends StatelessWidget {
  const pageMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.0),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.5,
                ),
                child: Image.asset(
                  'assets/images/logo-2-RedAzul.png',
                  // height: MediaQuery.of(context).size.height * 0.2,
                )
              ),
              Text(
                "MÓDULO DE PESCADORES",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: scaledFontSize(25.0),
                  fontFamily: "NunitoBold",
                  fontWeight: FontWeight.w900,
                  color: Color(0xff29ABE2)
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                constraints: BoxConstraints(
                  maxWidth: 250.0
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 8.0,
                      backgroundColor: Color(0xff29ABE2),
                      padding: EdgeInsets.only(
                          top: 15, left: 22, right: 22, bottom: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Iniciar sesion",
                    style: TextStyle(
                      fontFamily: "NunitoBold",
                      fontSize: scaledFontSize(22.0),
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                constraints: BoxConstraints(
                  maxWidth: 300.0
                ),
                // height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 8.0,
                      // shadowColor: Color(0xff707070),
                      backgroundColor: Color(0xff0071BC),
                      padding: EdgeInsets.only(
                          top: 15, left: 22, right: 22, bottom: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => pageCreateAcount()),
                    );
                  },
                  child: Text(
                    "Registrate",
                    style: TextStyle(
                      fontFamily: "NunitoBold",
                      fontSize: scaledFontSize(22.0),
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/logomiPescao.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
