import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeInputsPersonalDates1.dart';

class organismsRegisterUser1 extends StatefulWidget {
  const organismsRegisterUser1({super.key});

  @override
  State<organismsRegisterUser1> createState() => _organismsRegisterUser1State();
}

class _organismsRegisterUser1State extends State<organismsRegisterUser1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        atomLogoRedAzul(
          heightImg: MediaQuery.of(context).size.height * 0.2,
        ),
        atomTitle(title: 'Ahora cuéntanos mas sobre ti:'),
        SizedBox(height: 30.0),
        moleculeInputsPersonalDates1()
      ],
    ));
  }
}
