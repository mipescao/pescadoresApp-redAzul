import 'package:flutter/material.dart';

class semiCircule extends StatefulWidget {
  const semiCircule({super.key});

  @override
  State<semiCircule> createState() => _semiCirculeState();
}

class _semiCirculeState extends State<semiCircule> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft:
            Radius.circular(100.0), // Radio para la esquina superior izquierda
        topRight:
            Radius.circular(100.0), // Radio para la esquina superior derecha
      ),
      child: Container(
        width: 200.0, // Ancho del Container
        height: 100.0, // Altura del Container
        color: Colors.blue,
        child: Center(
            // child: Text(
            //   'Bordes superiores redondeados',
            //   style: TextStyle(color: Colors.white),
            // ),
            ),
      ),
    );
  }
}
