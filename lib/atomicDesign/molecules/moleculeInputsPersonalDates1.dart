import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

class documentType {
  final int value;
  final String label;

  documentType({
    required this.value,
    required this.label
  });

  void showAll(){
  }

factory documentType.fromJson(Map<String, dynamic> json) {

  return documentType(
    value: json['value'],
    label: json['label']
  );
}
}

List<documentType> typesOfSpecies = <documentType>[documentType(value: 1, label: 'Cedula de ciudadania2'), documentType(value: 2, label: '2') ];
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
          atomInputRequiredForm(
            controllerInput: myControllerLastName,
            textInput: 'Apellidos',
            typeKey: TextInputType.text,
          ),
          SizedBox(height: 30.0),
          atomInputRequiredForm(
            controllerInput: myControllerNickName,
            textInput: 'Sobrenombre',
            typeKey: TextInputType.text,
            requiredInput: false,
          ),
          SizedBox(height: 30.0),
          atomSelect(
            itemsSelect: typesOfSpecies,
            nameSelect: "Cedula de ciudadania",
            onChanged: (selectedValue){
              selectedDocument = selectedValue  as String;
            },
          ),
          SizedBox(height: 30.0),
          atomInputRequiredForm(
            controllerInput: myControllerNumberDocument,
            textInput: 'Número de documento',
            typeKey: TextInputType.text,
          ),
          SizedBox(height: 30.0),
          atomInputImage(
            nameVariable: 'Foto de la cédula',
            onChanged: (XFile? fileSelected) {  
              print(fileSelected);
              print(fileSelected?.path);
              print("dfjddlñfsjfsd hola m undo");
            }
          ),
          SizedBox(height: 30.0),
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
                atomInputImage(
                  nameVariable: 'Número de carnet AUNAP',
                  onChanged: (XFile? fileSelected) {  
                    print(fileSelected);
                    print(fileSelected?.path);
                    print("dfjddlñfsjfsd hola m undo");
                  }
                ),

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
  print(myControllerFirstName.text);
  print(myControllerSecondName.text);
  print(myControllerLastName.text);
  print(myControllerNickName.text);
  print(myControllerNumberDocument.text);
  if(isCheckedSi == true){
      print(myControllerCarnetAunap.text);
  }
  

  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageInfoContact()),
  );
}
