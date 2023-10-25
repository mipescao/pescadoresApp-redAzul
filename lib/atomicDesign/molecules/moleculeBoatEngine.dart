import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects80%.dart';
import 'package:pescadores/styles/styles.dart';
// Esta matriculado?
bool engineNo = false;
bool engineSI = true;

class moleculeBoatEngine extends StatefulWidget {
  const moleculeBoatEngine({super.key});

  @override
  State<moleculeBoatEngine> createState() => _moleculeBoatEngineState();
}

class _moleculeBoatEngineState extends State<moleculeBoatEngine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 400.0,
            decoration: styleSections.containerBlue,
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('¿Tiene motor?',
                        style: styleTextSections.textWhite),
                    Row(children: [
                      Text('Si', style: styleTextSections.textWhite),
                      SizedBox(width: 10.0),
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: engineSI
                                ? Color(0xfffbb03b)
                                : Color(0xff0095cd),
                            border: Border.all(color: Color(0xffffffff))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (engineSI == true) {
                                  engineNo = true;
                                  engineSI = false;
                                } else {
                                  engineNo = false;
                                  engineSI = true;
                                }
                              });
                            },
                            child: engineSI
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
                    ]),
                    Row(children: [
                      Text('No', style: styleTextSections.textWhite),
                      SizedBox(width: 10.0),
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: engineNo
                                ? Color(0xfffbb03b)
                                : Color(0xff0095cd),
                            border: Border.all(color: Color(0xffffffff))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (engineNo == true) {
                                  engineSI = true;
                                  engineNo = false;
                                } else {
                                  engineSI = false;
                                  engineNo = true;
                                }
                              });
                            },
                            child: engineNo
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
                    ])
                  ]),
            ),
          ),
          Container(
            width: 400.0,
            decoration: styleSections.containerBorderBlue,
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
            child: engineSI ? siEngineMolecule() : noEngineMolecule(),
          )
        ],
      ),
    );
  }
}

String optionEngineSelected = 'Motor fuera de borda';
final List<String> optionsEngine = [
  'Motor fuera de borda',
  'Motor normal',
];

int valueHp = 0;


class siEngineMolecule extends StatefulWidget {
  const siEngineMolecule({super.key});

  @override
  State<siEngineMolecule> createState() => _siEngineMoleculeState();
}

class _siEngineMoleculeState extends State<siEngineMolecule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SelectionWidget(
              items: optionsEngine,
              selectedItem: optionEngineSelected,
              onChanged: (selectedItem) {
                // Manejar la opción seleccionada aquí
                setState(() {
                  optionEngineSelected = selectedItem!;
                });
                // print('Opción seleccionada: $selectedItem');
              },
            ),
            SizedBox(height: 20.0,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(
                  'Potencia:',
                  style: TextStyle(
                      color: Color(0xff0095CD),
                      fontSize: 22.0,
                      fontFamily: "nunitoRegular"),
                      textAlign: TextAlign.center,
                ),
              ),
              // SizedBox(width: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(
                      20.0), // Agrega el border-radius deseado
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: 200,
                height: 45.0,
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Color(
                            0xff0071BC), // Cambiar el color de la flecha a azul
                      ),
                      onPressed: () {
                        setState(() {
                          if (valueHp > 1) {
                            valueHp = valueHp - 1;
                          }
                        });
                      },
                    ),
                    Text(
                      valueHp.toString(),
                      style: TextStyle(
                          color: Color(0xff0095CD),
                          fontSize: 22.0,
                          fontFamily: "nunitoRegular"),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Color(
                            0xff0071BC), // Cambiar el color de la flecha a azul
                      ),
                      onPressed: () {
                        setState(() {
                          valueHp = valueHp + 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              // SizedBox(width: 20.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.20,
                child: Text(
                  'HP',
                  style: TextStyle(
                      color: Color(0xff0095CD),
                      fontSize: 22.0,
                      fontFamily: "nunitoRegular"),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
          ],
        ),
      ),

    );
  }
}

bool velaSelected = false;
bool remoSelected = false;
bool canaleteSelected = false;
bool palancaSelected = false;

class noEngineMolecule extends StatefulWidget {
  const noEngineMolecule({super.key});

  @override
  State<noEngineMolecule> createState() => _noEngineMoleculeState();
}

class _noEngineMoleculeState extends State<noEngineMolecule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 15.0),
          Text('¿Qué usa?',
                style: styleTextSections.textBlueBold, textAlign: TextAlign.center),
          SizedBox(height: 15.0),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                      // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: velaSelected
                                ? Color(0xff0095cd)
                                : Color(0xffffffff),
                            border: Border.all(color: Color(0xff707070))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (velaSelected == true) {
                                  velaSelected = false;
                              } else {
                                velaSelected = true;
                              }
                            });
                          },
                          child: velaSelected
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
                      SizedBox(width: 10.0),
                      Text('Vela', style: styleTextSections.textBlue),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: canaleteSelected
                                ? Color(0xff0095cd)
                                : Color(0xffffffff),
                            border: Border.all(color: Color(0xff707070))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (canaleteSelected == true) {
                                  canaleteSelected = false;
                                } else {
                                  canaleteSelected = true;
                                }
                              });
                            },
                            child: canaleteSelected
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
                      SizedBox(width: 10.0),
                      Text('Canalete', style: styleTextSections.textBlue),
                    ],
                  ),
                
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: remoSelected
                                ? Color(0xff0095cd)
                                : Color(0xffffffff),
                            border: Border.all(color: Color(0xff707070))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (remoSelected == true) {
                                  remoSelected = false;
                                } else {
                                  remoSelected = true;
                                }
                              });
                            },
                            child: remoSelected
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
                      SizedBox(width: 10.0),
                      Text('Remo', style: styleTextSections.textBlue),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: palancaSelected
                                ? Color(0xff0095cd)
                                : Color(0xffffffff),
                            border: Border.all(color: Color(0xff707070))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (palancaSelected == true) {
                                  palancaSelected = false;
                                } else {
                                  palancaSelected = true;
                                }
                              });
                            },
                            child: palancaSelected
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
                      SizedBox(width: 10.0),
                      Text('Palanca', style: styleTextSections.textBlue),
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
          SizedBox(height: 15.0),
        ]
      ),
    );
      
  }
}