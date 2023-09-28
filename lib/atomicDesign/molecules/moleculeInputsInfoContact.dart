import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects.dart';

  final List<String> documents = [
    'Cedula de ciudadania',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre'
  ];

  String documentSelected1 = 'Cedula de ciudadania';

class moleculeInputsInfoContact extends StatefulWidget {
  const moleculeInputsInfoContact({super.key});

  @override
  State<moleculeInputsInfoContact> createState() => _moleculeInputsInfoContactState();
}

class _moleculeInputsInfoContactState extends State<moleculeInputsInfoContact> {
  @override
  Widget build(BuildContext context) {
    void asd(String variableName, String newValue) {
        variableName = newValue;
    }

    return Container(
      child: Column(
        children: [
          // atomSelects(selectedOption: 'documentSelected1', arrayOption: documents, updateVariableValue: asd),
        ],
      ),
    );
  }
}

