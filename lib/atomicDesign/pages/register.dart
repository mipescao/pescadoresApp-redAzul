import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class pageRegister extends StatefulWidget {
  const pageRegister({super.key});

  @override
  State<pageRegister> createState() => _pageRegisterState();
}

class _pageRegisterState extends State<pageRegister> {

  List<basicSelect> listDocuments = <basicSelect>[basicSelect(value: 9, label: 'NIT'), basicSelect(value: 1, label: 'Pasaporte'), basicSelect(value: 3, label: 'Cedula de ciudadania') ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          atomSelect(itemsSelect: listDocuments, nameSelect: "hola mundo"),
          sizedBoxAll.sizedBoxHeight,
          Text("Hola register"),
        ],
      )),
    );
  }
}