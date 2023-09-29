import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputDouble.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputImage.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects.dart';
import 'package:pescadores/atomicDesign/atoms/atomSubtitle.dart';
import 'package:pescadores/atomicDesign/pages/pageInfoContact.dart';

final myControllerFirstName = TextEditingController();
final myControllerSecondName = TextEditingController();
final myControllerLastName = TextEditingController();
final myControllerNickName = TextEditingController();
final myControllerNumberDocument = TextEditingController();
final myControllerCarnetAunap = TextEditingController();

String selectedDocument = 'Cedula de ciudadania';
final List<String> documents = [
  'Cedula de ciudadania',
  'Tarjeta de identidad',
  'Pasaporte',
];

bool isCheckedSi = false;
bool isCheckedNo = true;

class moleculeInputsPersonalDates1 extends StatefulWidget {
  const moleculeInputsPersonalDates1({super.key});

  @override
  State<moleculeInputsPersonalDates1> createState() =>
      _moleculeInputsPersonalDates1State();
}

class _moleculeInputsPersonalDates1State
    extends State<moleculeInputsPersonalDates1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          atomInputDouble(
              controllerInput1: myControllerFirstName,
              textInput1: 'Primer nombre',
              icon1: Icon(Icons.password, color: Colors.transparent),
              controllerInput2: myControllerSecondName,
              textInput2: 'Segundo nombre',
              icon2: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(height: 30.0),
          atomInputForm(
              controllerInput: myControllerLastName,
              textInput: 'Apellidos',
              icon: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(height: 30.0),
          atomInputForm(
              controllerInput: myControllerNickName,
              textInput: 'Sobrenombre',
              icon: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(height: 30.0),
          atomSelects(
            items: documents,
            selectedItem: selectedDocument,
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                selectedDocument = selectedItem!;
              });
              // print('Opción seleccionada: $selectedItem');
            },
          ),
          SizedBox(height: 30.0),
          atomInputForm(
              controllerInput: myControllerNumberDocument,
              textInput: 'Número de documento',
              icon: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(height: 30.0),
          atomInputImage(),
          SizedBox(height: 30.0),
          atomInputImage(),
          SizedBox(height: 30.0),
          atomSubtitle(subtitle: '¿Tienes carnet de la AUNAP?'),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isCheckedSi == true) {
                        isCheckedNo = true;
                        isCheckedSi = false;
                      } else if (isCheckedSi == false) {
                        isCheckedNo = false;
                        isCheckedSi = true;
                      }
                      ; // Cambiar el estado del Checkbox al hacer clic en el Container.
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        'Si',
                        style: TextStyle(
                            color: Color(0xff0095CD),
                            fontSize: 26.0,
                            fontFamily: "nunitoRegular"),
                      ),
                      Checkbox(
                        value: isCheckedSi,
                        onChanged: (bool? value) {
                          setState(() {
                            if (isCheckedSi == true) {
                              isCheckedNo = true;
                              isCheckedSi = false;
                            } else if (isCheckedSi == false) {
                              isCheckedNo = false;
                              isCheckedSi = true;
                            }
                          });
                        },
                        visualDensity: VisualDensity(
                            vertical: 4.0,
                            horizontal:
                                4.0), // Ajusta los valores según tus neces
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isCheckedSi == true) {
                        isCheckedNo = true;
                        isCheckedSi = false;
                      } else if (isCheckedSi == false) {
                        isCheckedNo = false;
                        isCheckedSi = true;
                      }
                      ; // Cambiar el estado del Checkbox al hacer clic en el Container.
                    });
                  },
                  child: Row(
                    children: [
                      Text('No',
                          style: TextStyle(
                              color: Color(0xff0095CD),
                              fontSize: 26.0,
                              fontFamily: "nunitoRegular")),
                      Checkbox(
                          value: isCheckedNo,
                          onChanged: (bool? value) {
                            setState(() {
                              if (isCheckedNo == true) {
                                isCheckedSi = true;
                                isCheckedNo = false;
                              } else if (isCheckedNo == false) {
                                isCheckedNo = true;
                                isCheckedSi = false;
                              }
                            });
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: isCheckedSi,
            child: Column(
              children: [
                atomInputForm(
                    controllerInput: myControllerCarnetAunap,
                    textInput: 'Número de carnet AUNAP',
                    icon: Icon(Icons.password, color: Colors.transparent)),
                SizedBox(height: 30.0),
                atomInputImage(),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          atomButtonForm(text: "Enviar", function: savePersonalDates),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}

savePersonalDates(context) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageInfoContact()),
  );
}
