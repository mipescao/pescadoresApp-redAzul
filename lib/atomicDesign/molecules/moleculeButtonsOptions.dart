import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonOptions.dart';
import 'package:pescadores/atomicDesign/pages/pageFishermanRegister.dart';

class moleculeButtonsOptions extends StatefulWidget {
  const moleculeButtonsOptions({super.key});

  @override
  State<moleculeButtonsOptions> createState() => _moleculeButtonsOptionsState();
}

class _moleculeButtonsOptionsState extends State<moleculeButtonsOptions> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          atomButtonOptions(
              text: 'Soy un pescador',
              function: soyPescador,
              image: 'assets/images/pescador.png',
              widthImage: 49.0,
              colorButton: Color(0xff0071bc)),
          SizedBox(
            height: 30.0,
          ),
          atomButtonOptions(
              text: 'No pesco pero soy dueño de faenas',
              function: soyPescador,
              image: 'assets/images/propietarioFaena.png',
              widthImage: 42.0,
              colorButton: Color(0xff0487d9)),
          SizedBox(
            height: 30.0,
          ),
          atomButtonOptions(
              text: 'Soy una organización de pescadores',
              function: soyPescador,
              image: 'assets/images/pescadoresOrganizacion.png',
              widthImage: 80.0,
              colorButton: Color(0xff29abe2)),
        ],
      ),
    );
  }
}

soyPescador(context) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageFishermanRegister()),
  );
}
