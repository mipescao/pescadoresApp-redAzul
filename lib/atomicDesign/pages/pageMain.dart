import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/pages/pageCreateAcount.dart';

// ignore: camel_case_types
class pageMainPage extends StatelessWidget {
  const pageMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Expanded(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Column(
                      children: [
                        Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.5,
                            ),
                            child: Image.asset(
                              'assets/images/logo-2-RedAzul.png',
                              height: MediaQuery.of(context).size.height * 0.2,
                            )),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        Text(
                          "MÓDULO DE PESCADORES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: "NunitoBold",
                              fontWeight: FontWeight.w900,
                              color: Color(0xff29ABE2)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 205.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
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
                                fontSize: 24.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 205.0,
                          // height: 50.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
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
                                fontSize: 24.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
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
        )),
      ),
    );
  }
}
