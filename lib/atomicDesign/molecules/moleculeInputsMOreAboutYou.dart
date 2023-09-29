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

    // checkbox


    return Container(
      child: Column(
        children: [
          atomTitle(title: 'Cuéntanos algo más sobre ti:'),
          // SizedBox(height: 30.0),
          atomSelectsYear(),
          SizedBox(height: 30.0),
          atomSelects(
            items: gender,
            selectedItem: genderSelected,
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                genderSelected = selectedItem!;
              });
              // print('Opción seleccionada: $selectedItem');
            },
          ),
          SizedBox(height: 30.0),
          atomSelects(
            items: ethnicGroup,
            selectedItem: ethnicGroupSelected,
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                ethnicGroupSelected = selectedItem!;
              });
              // print('Opción seleccionada: $selectedItem');
            },
          ),
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
                          variableValue: headOfTheFamily,
                          onChanged: (value){
                            setState(() {
                              print(value);
                              if(value == true){
                                headOfTheFamily = false;
                              }else{
                                headOfTheFamily = true;
                              } 
                            });
                          }
                        ),
                        atomOptionsCheckbox(
                          text: 'Soy una persona en condición de discapacidad',
                          variableValue: disability,
                          onChanged: (value){
                            setState(() {
                              print(value);
                              if(value == true){
                                disability = false;
                              }else{
                                disability = true;
                              } 
                            });
                          }
                        ),
                        atomOptionsCheckbox(
                          text: 'Soy desplazado',
                          variableValue: displaced,
                          onChanged: (value){
                            setState(() {
                              print(value);
                              if(value == true){
                                displaced = false;
                              }else{
                                displaced = true;
                              } 
                            });
                          }
                        ),
                                                atomOptionsCheckbox(
                          text: 'Soy victima del conflicto armado',
                          variableValue: victimOfTheConflict,
                          onChanged: (value){
                            setState(() {
                              print(value);
                              if(value == true){
                                victimOfTheConflict = false;
                              }else{
                                victimOfTheConflict = true;
                              } 
                            });
                          }
                        ),
                        atomOptionsCheckbox(
                          text: 'Pertenezco a la comunidad LGTBIQ+',
                          variableValue: lgtbiq,
                          onChanged: (value){
                            setState(() {
                              print(value);
                              if(value == true){
                                lgtbiq = false;
                              }else{
                                lgtbiq = true;
                              } 
                            });
                          }
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

    // void updateValueCheckbox(String variableName, bool newValue) {
    //   setState(() {
    //     if (variableName == 'headOfTheFamily') {
    //       if (newValue == true) {
    //         headOfTheFamily = false;
    //         backColorheadOfTheFamily = Colors.transparent;
    //         colorheadOfTheFamily = Color(0xff707070);
    //       } else {
    //         headOfTheFamily = true;
    //         backColorheadOfTheFamily = Color(0xff29abe2);
    //         colorheadOfTheFamily = Color(0xffffffff);
    //       }
    //     } else if (variableName == 'disability') {
    //       if (newValue == true) {
    //         disability = false;
    //         backColordisability = Colors.transparent;
    //         colordisability = Color(0xff707070);
    //       } else {
    //         disability = true;
    //         backColordisability = Color(0xff29abe2);
    //         colordisability = Color(0xffffffff);
    //       }
    //     } else if (variableName == 'displaced') {
    //       if (newValue == true) {
    //         displaced = false;
    //         backColordisplaced = Colors.transparent;
    //         colordisplaced = Color(0xff707070);
    //       } else {
    //         displaced = true;
    //         backColordisplaced = Color(0xff29abe2);
    //         colordisplaced = Color(0xffffffff);
    //       }
    //     } else if (variableName == 'victimOfTheConflict') {
    //       if (newValue == true) {
    //         victimOfTheConflict = false;
    //         backColorvictimOfTheConflict = Colors.transparent;
    //         colorvictimOfTheConflict = Color(0xff707070);
    //       } else {
    //         victimOfTheConflict = true;
    //         backColorvictimOfTheConflict = Color(0xff29abe2);
    //         colorvictimOfTheConflict = Color(0xffffffff);
    //       }
    //     } else {
    //       if (newValue == true) {
    //         lgtbiq = false;
    //         backColorlgtbiq = Colors.transparent;
    //         colorlgtbiq = Color(0xff707070);
    //       } else {
    //         lgtbiq = true;
    //         colorlgtbiq = Color(0xffffffff);
    //         backColorlgtbiq = Color(0xff29abe2);
    //       }
    //     }
    //   });
    // }