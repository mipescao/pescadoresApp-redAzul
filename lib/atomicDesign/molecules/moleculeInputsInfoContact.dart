import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects.dart';
import 'package:pescadores/atomicDesign/pages/pageMoreAboutYou.dart';

final myControllerDirection = TextEditingController();
final myControllerPhone = TextEditingController();
final myControllerEmergencyPhone = TextEditingController();

String departamentSelected = 'Atlantico';
final List<String> departaments = [
  'Atlantico',
  'Bolivar',
  'departamento2',
];

String municipalitySelected = 'Soledad';
final List<String> municipalities = [
  'Soledad',
  'Lasflores',
  'Puerto mocho',
];

class moleculeInputsInfoContact extends StatefulWidget {
  const moleculeInputsInfoContact({super.key});

  @override
  State<moleculeInputsInfoContact> createState() =>
      _moleculeInputsInfoContactState();
}

class _moleculeInputsInfoContactState extends State<moleculeInputsInfoContact> {
  @override
  Widget build(BuildContext context) {
    void updateValue(String variableName, String newValue) {
      setState(() {
        print(variableName + newValue);

        if (variableName == 'departamentSelected') {
          departamentSelected = newValue;
        } else if (variableName == 'municipalitySelected') {
          municipalitySelected = newValue;
        }
      });
    }

    return Container(
      child: Column(
        children: [
          atomSelects(
            items: departaments,
            selectedItem: departamentSelected,
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                departamentSelected = selectedItem!;
              });
              // print('Opción seleccionada: $selectedItem');
            },
          ),
          SizedBox(height: 40.0),
          atomSelects(
            items: municipalities,
            selectedItem: municipalitySelected,
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                municipalitySelected = selectedItem!;
              });
              // print('Opción seleccionada: $selectedItem');
            },
          ),
          SizedBox(height: 40.0),
          atomInputForm(
              controllerInput: myControllerDirection,
              textInput: 'Dirección',
              icon: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(height: 40.0),
          atomInputNumberForm(
              controllerInput: myControllerPhone,
              textInput: 'Teléfono',
              icon: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(height: 40.0),
          atomInputNumberForm(
              controllerInput: myControllerEmergencyPhone,
              textInput: 'Teléfono para emergencias',
              icon: Icon(Icons.password, color: Colors.transparent)),
          SizedBox(
            height: 40.0,
          ),
          atomButtonForm(text: 'Enviar', function: sendInfoContact)
        ],
      ),
    );
  }
}

sendInfoContact(context) {
  print(myControllerDirection.text);
  print(myControllerPhone.text);
  print(myControllerEmergencyPhone.text);
  print(departamentSelected);
  print(municipalitySelected);
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageMoreAboutYou()),
  );
}
