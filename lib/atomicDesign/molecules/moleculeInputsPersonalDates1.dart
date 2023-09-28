import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputDouble.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputImage.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelectDocument.dart';
import 'package:pescadores/atomicDesign/atoms/atomSubtitle.dart';

final myControllerFirstName = TextEditingController();
final myControllerSecondName = TextEditingController();
final myControllerLastName = TextEditingController();
final myControllerNumberDocument = TextEditingController();

class moleculeInputsPersonalDates1 extends StatefulWidget {
  const moleculeInputsPersonalDates1({super.key});

  @override
  State<moleculeInputsPersonalDates1> createState() =>
      _moleculeInputsPersonalDates1State();
}

class _moleculeInputsPersonalDates1State
    extends State<moleculeInputsPersonalDates1> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [],
          ),
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
          atomSelects(),
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
          Row(
            children: [
              Row(
                children: [
                  Text('Si'),
                ],
              ),
              Row(
                children: [Text('No')],
              )
            ],
          )
        ],
      ),
    );
  }
}
