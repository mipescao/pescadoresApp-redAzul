import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeButtonsOptions.dart';

class organismsCreateAcount extends StatefulWidget {
  const organismsCreateAcount({super.key});

  @override
  State<organismsCreateAcount> createState() => _organismsCreateAcountState();
}

class _organismsCreateAcountState extends State<organismsCreateAcount> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30.0),
          atomLogoRedAzul(
            heightImg: MediaQuery.of(context).size.height * 0.2,
          ),
          atomTitle(title: "Crea tu cuenta"),
          SizedBox(height: 10.0),
          Text("Y se el heroe que le falta al planeta:", 
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontFamily: "NunitoBold",
            fontWeight: FontWeight.normal,
            color: Color(0xff0095CD)
          ),),

          SizedBox(height: 40.0),

          Text("Primero dinos que haces en la pesca:", 
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontFamily: "NunitoBold",
            fontWeight: FontWeight.w500,
            color: Color(0xff0095CD)
          ),),

          SizedBox(height: 30.0),

          moleculeButtonsOptions()
        ],
      ),
    );
  }
}