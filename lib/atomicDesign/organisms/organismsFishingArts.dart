import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomSubtitle.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeOptionsFishingArts.dart';

class organismsFishingArts extends StatefulWidget {
  const organismsFishingArts({super.key});

  @override
  State<organismsFishingArts> createState() => _organismsFishingArtsState();
}

class _organismsFishingArtsState extends State<organismsFishingArts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            atomLogoRedAzul(heightImg: MediaQuery.of(context).size.height * 0.2,),
            atomTitle(title: "Hablanos de tu actividad pesquera:"),
            SizedBox(height: 30.0,),
            atomSubtitle(subtitle: "¿Qué artes de pesca usas?"),
            SizedBox(height: 30.0,),
            moleculeOptionsFishingArts(),
            SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }
}