import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomOptionsCheckbox.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelectsYear.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/pages/pageFinancialActivity.dart';

// variables para los colores
Color colorheadOfTheFamily = Color(0xff707070);
Color colordisability = Color(0xff707070);
Color colordisplaced = Color(0xff707070);
Color colorvictimOfTheConflict = Color(0xff707070);
Color colorlgtbiq = Color(0xff707070);

Color backColorheadOfTheFamily = Colors.transparent;
Color backColordisability = Colors.transparent;
Color backColordisplaced = Colors.transparent;
Color backColorvictimOfTheConflict = Colors.transparent;
Color backColorlgtbiq = Colors.transparent;

String genderSelected = 'Hombre';
final List<String> gender = [
  'Hombre',
  'Mujer',
  'Marica',
];

String ethnicGroupSelected = 'Negro';
final List<String> ethnicGroup = [
  'Negro',
  'indigena',
  'Palenquero',
];

// checkbox del cuadro azul de cabeza de familia, desplazado, etc...
bool headOfTheFamily = false;
bool disability = false;
bool displaced = false;
bool victimOfTheConflict = false;
bool lgtbiq = false;

class moleculeInputsMOreAboutYou extends StatefulWidget {
  const moleculeInputsMOreAboutYou({super.key});

  @override
  State<moleculeInputsMOreAboutYou> createState() =>
      _moleculeInputsMOreAboutYouState();
}

class _moleculeInputsMOreAboutYouState
    extends State<moleculeInputsMOreAboutYou> {
  @override
  Widget build(BuildContext context) {
    // selects
    void updateValue(String variableName, String newValue) {
      if (variableName == 'genderSelected') {
        genderSelected = newValue;
      } else if (ethnicGroupSelected == 'ethnicGroupSelected') {
        ethnicGroupSelected = newValue;
      }
    }

    // checkbox
    void updateValueCheckbox(String variableName, bool newValue) {
      setState(() {
        if (variableName == 'headOfTheFamily') {
          if (newValue == true) {
            headOfTheFamily = false;
            backColorheadOfTheFamily = Colors.transparent;
            colorheadOfTheFamily = Color(0xff707070);
          } else if (newValue == false) {
            headOfTheFamily = true;
            backColorheadOfTheFamily = Color(0xff29abe2);
            colorheadOfTheFamily = Color(0xffffffff);
          }
        } else if (variableName == 'disability') {
          if (newValue == true) {
            disability = false;
            backColordisability = Colors.transparent;
            colordisability = Color(0xff707070);
          } else if (newValue == false) {
            disability = true;
            backColordisability = Color(0xff29abe2);
            colordisability = Color(0xffffffff);
          }
        } else if (variableName == 'displaced') {
          if (newValue == true) {
            displaced = false;
            backColordisplaced = Colors.transparent;
            colordisplaced = Color(0xff707070);
          } else if (newValue == false) {
            displaced = true;
            backColordisplaced = Color(0xff29abe2);
            colordisplaced = Color(0xffffffff);
          }
        } else if (variableName == 'victimOfTheConflict') {
          if (newValue == true) {
            victimOfTheConflict = false;
            backColorvictimOfTheConflict = Colors.transparent;
            colorvictimOfTheConflict = Color(0xff707070);
          } else if (newValue == false) {
            victimOfTheConflict = true;
            backColorvictimOfTheConflict = Color(0xff29abe2);
            colorvictimOfTheConflict = Color(0xffffffff);
          }
        } else if (variableName == 'lgtbiq') {
          if (newValue == true) {
            lgtbiq = false;
            backColorlgtbiq = Colors.transparent;
            colorlgtbiq = Color(0xff707070);
          } else if (newValue == false) {
            lgtbiq = true;
            colorlgtbiq = Color(0xffffffff);
            backColorlgtbiq = Color(0xff29abe2);
          }
        }
      });
    }

    return Container(
      child: Column(
        children: [
          atomTitle(title: 'Cuéntanos algo más sobre ti:'),
          // SizedBox(height: 30.0),
          atomSelectsYear(),
          SizedBox(height: 30.0),
          atomSelects(
              nameVariable: 'genderSelected',
              selectedOption: genderSelected,
              arrayOption: gender,
              updateVariableValue: updateValue),
          SizedBox(height: 30.0),
          atomSelects(
              nameVariable: 'ethnicGroupSelected',
              selectedOption: ethnicGroupSelected,
              arrayOption: ethnicGroup,
              updateVariableValue: updateValue),
          SizedBox(height: 30.0),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.90),
                      child: Column(children: [
                        atomOptionsCheckbox(
                          text: 'Soy cabeza de familia',
                          variableName: 'headOfTheFamily',
                          variableValue: headOfTheFamily,
                          updateVariableValue: updateValueCheckbox,
                          colorBackground: backColorheadOfTheFamily,
                          colorText: colorheadOfTheFamily,
                        ),
                        // SizedBox(height: 10.0),
                        atomOptionsCheckbox(
                          text: 'Soy una persona en condición de discapacidad',
                          variableName: 'disability',
                          variableValue: disability,
                          updateVariableValue: updateValueCheckbox,
                          colorBackground: backColordisability,
                          colorText: colordisability,
                        ),
                        // SizedBox(height: 10.0),
                        atomOptionsCheckbox(
                          text: 'Soy desplazado',
                          variableName: 'displaced',
                          variableValue: displaced,
                          updateVariableValue: updateValueCheckbox,
                          colorBackground: backColordisplaced,
                          colorText: colordisplaced,
                        ),
                        // SizedBox(height: 10.0),
                        atomOptionsCheckbox(
                          text: 'Soy victima del conflicto armado',
                          variableName: 'victimOfTheConflict',
                          variableValue: victimOfTheConflict,
                          updateVariableValue: updateValueCheckbox,
                          colorBackground: backColorvictimOfTheConflict,
                          colorText: colorvictimOfTheConflict,
                        ),
                        SizedBox(height: 10.0),
                        atomOptionsCheckbox(
                          text: 'Pertenezco a la comunidad LGTBIQ+',
                          variableName: 'lgtbiq',
                          variableValue: lgtbiq,
                          updateVariableValue: updateValueCheckbox,
                          colorBackground: backColorlgtbiq,
                          colorText: colorlgtbiq,
                        ),
                      ]),
                    )),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          atomButtonForm(text: 'enviar', function: sendformMoreAboutYou),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}

sendformMoreAboutYou(context) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageFinancialActivity()),
  );
}
