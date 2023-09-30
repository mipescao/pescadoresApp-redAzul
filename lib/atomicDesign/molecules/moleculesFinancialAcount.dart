import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects80%.dart';
import 'package:pescadores/styles/styles.dart';

// variables  de los checkbox
bool valueSiAcount = true;
bool valueNoAcount = false;

bool valueSiNeedsHelpAcount = true;
bool valueNoNeedsHelpAcount = false;

class moleculesFinancialAcount extends StatefulWidget {
  const moleculesFinancialAcount({super.key});

  @override
  State<moleculesFinancialAcount> createState() =>
      _moleculesFinancialAcountState();
}

class _moleculesFinancialAcountState extends State<moleculesFinancialAcount> {
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            topRight: Radius.circular(14.0)),
                        color: Color(0xff0095CD),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Text('¿Tienes una cuenta bancaria?',
                              style: styleTextSections.textWhite,
                              textAlign: TextAlign.center),
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
                                          color: valueSiAcount
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
                                              if (valueSiAcount == true) {
                                                valueNoAcount = true;
                                                valueSiAcount = false;
                                              } else {
                                                valueNoAcount = false;
                                                valueSiAcount = true;
                                              }
                                            });
                                          },
                                          child: valueSiAcount
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
                                          color: valueNoAcount
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
                                              if (valueNoAcount == true) {
                                                valueSiAcount = true;
                                                valueNoAcount = false;
                                              } else {
                                                valueSiAcount = false;
                                                valueNoAcount = true;
                                              }
                                            });
                                          },
                                          child: valueNoAcount
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
                  Center(
                    child: Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0)),
                        border: Border.all(color: Color(0xff0095cd)),
                        color: Color(0xffffffff),
                      ),
                      child: valueSiAcount ? siAcount() : noAcount(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

String bankAccountSelected = 'NEQUI';
final List<String> bankAccount = [
  'NEQUI',
  'Bancolombia A la mano',
  'Bancolombia',
  'DAVIplata',
  'Davivienda',
  'BBVA',
  'Banco de Occidente',
  'Scotiabank Colpatria',
  'Banco Itaú',
  'GNB Sudameris',
  'Banco Agrario',
  'Banco Popular',
  'Banco Caja Social',
  'Banco AV Villas',
  'Otro',
];

class siAcount extends StatefulWidget {
  const siAcount({super.key});

  @override
  State<siAcount> createState() => _siAcountState();
}

class _siAcountState extends State<siAcount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            Text('¿Con qué entidad?',
                style: styleTextSections.textBlue, textAlign: TextAlign.center),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectionWidget(
                  items: bankAccount,
                  selectedItem: bankAccountSelected,
                  onChanged: (selectedItem) {
                    // Manejar la opción seleccionada aquí
                    setState(() {
                      bankAccountSelected = selectedItem!;
                    });
                    // print('Opción seleccionada: $selectedItem');
                  },
                ),
              ],
            ),
            SizedBox(height: 15.0)
          ],
        ),
      ),
    );
  }
}

class noAcount extends StatefulWidget {
  const noAcount({super.key});

  @override
  State<noAcount> createState() => _noAcountState();
}

class _noAcountState extends State<noAcount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            Text('¿Necesitas orientación para tenerla?',
                style: styleTextSections.textBlue, textAlign: TextAlign.center),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Si',
                      style: styleTextSections.textBlue,
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      // Personaliza el Checkbox usando un Container
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: valueSiNeedsHelpAcount
                              ? Color(0xff0095CD)
                              : Color(0xffffffff),
                          border: Border.all(color: Color(0xff707070))),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            // Cambia el estado del Checkbox al hacer clic
                            setState(() {
                              if (valueSiNeedsHelpAcount == true) {
                                valueNoNeedsHelpAcount = true;
                                valueSiNeedsHelpAcount = false;
                              } else {
                                valueNoNeedsHelpAcount = false;
                                valueSiNeedsHelpAcount = true;
                              }
                            });
                          },
                          child: valueSiNeedsHelpAcount
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
                    Text('No', style: styleTextSections.textBlue),
                    SizedBox(width: 10.0),
                    Container(
                      // Personaliza el Checkbox usando un Container
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: valueNoNeedsHelpAcount
                              ? Color(0xff0095CD)
                              : Color(0xffffffff),
                          border: Border.all(color: Color(0xff707070))),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            // Cambia el estado del Checkbox al hacer clic
                            setState(() {
                              if (valueNoNeedsHelpAcount == true) {
                                valueSiNeedsHelpAcount = true;
                                valueNoNeedsHelpAcount = false;
                              } else {
                                valueSiNeedsHelpAcount = false;
                                valueNoNeedsHelpAcount = true;
                              }
                            });
                          },
                          child: valueNoNeedsHelpAcount
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
            SizedBox(height: 15.0)
          ],
        ),
      ),
    );
  }
}
