import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomOptionsCheckbox.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects.dart';

final arrayOption = ['En aguas marinas', 'En aguas continentales', 'En estuarios'];

final jsonOptions = {};


class moleculefishingZone extends StatefulWidget {
  const moleculefishingZone({super.key});

  @override
  State<moleculefishingZone> createState() => _moleculefishingZoneState();
}

class _moleculefishingZoneState extends State<moleculefishingZone> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                            jsonOptions[e] = value;
                          });
                        }
                      );
                    
                  }).toList(),
                ),
              )),
        ),
      ],

    );
  }
}

String departamentSelected = 'Atlantico';
final List<String> departament = ['Atlantico','Bolivar','Antioquia',];
String citySelected = 'Barranquilla';
final List<String> city = ['Barranquilla','Puerto colombia'];
String waterBodySelected = 'Cienaga';
final List<String> waterBody = ['Cienaga','Mar','otro'];
String sectorSelected = 'Puerto mocho';
final List<String> sector = ['Puerto mocho','prueto mocho','prueto mocho',];

final myControllerLandingSite = TextEditingController();

// selects
class moleculeSelectsFishingZone extends StatefulWidget {
  const moleculeSelectsFishingZone({super.key});

  @override
  State<moleculeSelectsFishingZone> createState() => _moleculeSelectsFishingZoneState();
}

class _moleculeSelectsFishingZoneState extends State<moleculeSelectsFishingZone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          // atomSelects(
          //   items: departament,
          //   selectedItem: departamentSelected,
          //   onChanged: (selectedItem) {
          //     // Manejar la opción seleccionada aquí
          //     setState(() {
          //       departamentSelected = selectedItem!;
          //     });
          //     // print('Opción seleccionada: $selectedItem');
          //   },
          // ),
          SizedBox(height: 15.0,),
          // atomSelects(
          //   items: departament,
          //   selectedItem: departamentSelected,
          //   onChanged: (selectedItem) {
          //     // Manejar la opción seleccionada aquí
          //     setState(() {
          //       departamentSelected = selectedItem!;
          //     });
          //     // print('Opción seleccionada: $selectedItem');
          //   },
          // ),
          SizedBox(height: 15.0,),
          // atomSelects(
          //   items: departament,
          //   selectedItem: departamentSelected,
          //   onChanged: (selectedItem) {
          //     // Manejar la opción seleccionada aquí
          //     setState(() {
          //       departamentSelected = selectedItem!;
          //     });
          //     // print('Opción seleccionada: $selectedItem');
          //   },
          // ),
          SizedBox(height: 15.0,),
          // atomSelects(
          //   items: departament,
          //   selectedItem: departamentSelected,
          //   onChanged: (selectedItem) {
          //     // Manejar la opción seleccionada aquí
          //     setState(() {
          //       departamentSelected = selectedItem!;
          //     });
          //     // print('Opción seleccionada: $selectedItem');
          //   },
          // ),
          SizedBox(height: 15.0,),
          atomInputForm(
            controllerInput: myControllerLandingSite,
            textInput: 'Nombre del sitio de embarque',
            icon: Icon(Icons.password,
            color: Colors.transparent)
          ),
      ],
    );
  }
}