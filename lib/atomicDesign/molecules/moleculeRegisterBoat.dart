import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelectsImage.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';

final myControllerNameBoat = TextEditingController();

String typeBoatSelected = 'Soledad';
final List<String> typeBoats = [
  'Soledad',
  'Lasflores',
  'Puerto mocho',
];


class moleculeRegisterBoat extends StatefulWidget {
  const moleculeRegisterBoat({super.key});

  @override
  State<moleculeRegisterBoat> createState() => _moleculeRegisterBoatState();
}

class _moleculeRegisterBoatState extends State<moleculeRegisterBoat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        atomTitle(title: 'Registra tu embarcación'),
        SizedBox(height: 30.0),
        atomInputForm(controllerInput: myControllerNameBoat, textInput: 'Nombre de la embarcación', icon: Icon(Icons.password, color: Colors.transparent)),
        SizedBox(height: 30.0),
          // atomSelects()
          atomSelects(
            items: typeBoats,
            selectedItem: typeBoatSelected,
            onChanged: (selectedItem) {
              // Manejar la opción seleccionada aquí
              setState(() {
                typeBoatSelected = selectedItem!;
              });
              // print('Opción seleccionada: $selectedItem');
            },
          ),
      ],
    );
  }
}