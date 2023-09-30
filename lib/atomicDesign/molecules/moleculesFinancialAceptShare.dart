import 'package:flutter/material.dart';
import 'package:pescadores/styles/styles.dart';

// variables  de los checkbox
bool valueSiAceptShare = true;
bool valueNoAcceptShare = false;

class moleculesFinancialAceptShare extends StatefulWidget {
  const moleculesFinancialAceptShare({super.key});

  @override
  State<moleculesFinancialAceptShare> createState() =>
      _moleculesFinancialAceptShareState();
}

class _moleculesFinancialAceptShareState
    extends State<moleculesFinancialAceptShare> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Color(0xff0095CD),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                                '¿Aceptas que miPescao comparta información de tu actividad comercial pesquera con entidades financieras y otras para acceder a créditos y beneficios?',
                                style: styleTextSections.textWhite,
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(height: 15.0),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('Si',
                                        style: styleTextSections.textWhite),
                                    SizedBox(width: 10.0),
                                    Container(
                                      // Personaliza el Checkbox usando un Container
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: valueSiAceptShare
                                              ? Color(0xffFBB03B)
                                              : Color(0xff0095CD),
                                          border: Border.all(
                                              color: Color(0xffffffff))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          onTap: () {
                                            // Cambia el estado del Checkbox al hacer clic
                                            setState(() {
                                              if (valueSiAceptShare == true) {
                                                valueNoAcceptShare = true;
                                                valueSiAceptShare = false;
                                              } else {
                                                valueNoAcceptShare = false;
                                                valueSiAceptShare = true;
                                              }
                                            });
                                          },
                                          child: valueSiAceptShare
                                              ? Icon(
                                                  Icons.check,
                                                  size: 24.0,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 24.0,
                                                  color: Colors.transparent,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50.0,
                                ),
                                Row(
                                  children: [
                                    Text('No',
                                        style: styleTextSections.textWhite),
                                    SizedBox(width: 10.0),
                                    Container(
                                      // Personaliza el Checkbox usando un Container
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: valueNoAcceptShare
                                              ? Color(0xffFBB03B)
                                              : Color(0xff0095CD),
                                          border: Border.all(
                                              color: Color(0xffffffff))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          onTap: () {
                                            // Cambia el estado del Checkbox al hacer clic
                                            setState(() {
                                              if (valueNoAcceptShare == true) {
                                                valueSiAceptShare = true;
                                                valueNoAcceptShare = false;
                                              } else {
                                                valueSiAceptShare = false;
                                                valueNoAcceptShare = true;
                                              }
                                            });
                                          },
                                          child: valueNoAcceptShare
                                              ? Icon(
                                                  Icons.check,
                                                  size: 24.0,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 24.0,
                                                  color: Colors.transparent,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.0)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
