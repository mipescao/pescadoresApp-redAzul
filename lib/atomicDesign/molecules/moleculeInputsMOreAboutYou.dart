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

final arrayOption = ['Soy cabeza de familia', 'Soy una persona en condición de discapacidad.', 'Soy desplazado/a', 'Soy victima del conflicto armado.', 'Pertenezco a la comunidad LGTBIQ+.'];

final jsonOptions = {};

// checkbox del cuadro azul de cabeza de familia, desplazado, etc...
bool headOfTheFamily = true;
bool disability = true;
bool displaced = true;
bool victimOfTheConflict = true;
bool lgtbiq = true;

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
          atomSelect(
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                genderSelected = selectedItem as String;
              });
              // print('Opción seleccionada: $selectedItem');
            }, itemsSelect: gender, nameSelect: "Genero",
          ),
          SizedBox(height: 30.0),
          // atomSelects(
          //   items: ethnicGroup,
          //   selectedItem: ethnicGroupSelected,
          //   onChanged: (selectedItem) {
          //     // Manejar la opción seleccionada aquí
          //     setState(() {
          //       ethnicGroupSelected = selectedItem!;
          //     });
          //     // print('Opción seleccionada: $selectedItem');
          //   },
          // ),
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
                      child: 
                      Column(
                        children: arrayOption.map((e){
                          return atomOptionsCheckbox(
                            text: e,
                              onChanged: (value){
                                setState(() {
                                  print(value);
                                  if(value == true){
                                    jsonOptions[e] = value;
                                  }else{
                                    if(jsonOptions[e]){
                                      jsonOptions.remove(e);
                                    }
                                  }
                                  
                                });
                              }
                            );
                          
                        }).toList(),
                      ),
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
  print(jsonOptions);
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageFinancialActivity()),
  );
}