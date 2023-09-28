import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeInputsInfoContact.dart';

class organismsInfoContact extends StatefulWidget {
  const organismsInfoContact({super.key});

  @override
  State<organismsInfoContact> createState() => _organismsInfoContactState();
}

class _organismsInfoContactState extends State<organismsInfoContact> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 30.0),
            atomLogoRedAzul(heightImg: MediaQuery.of(context).size.height * 0.2),
            atomTitle(title: 'Danos tu información de contacto:'),
            SizedBox(height: 30.0),
            moleculeInputsInfoContact()
          ],
        ),
      ),
    );
  }
}