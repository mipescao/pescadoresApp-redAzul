
import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeRegisterBoat.dart';

class organismsFishermanBoat extends StatefulWidget {
  const organismsFishermanBoat({super.key});

  @override
  State<organismsFishermanBoat> createState() => _organismsFishermanBoatState();
}

class _organismsFishermanBoatState extends State<organismsFishermanBoat> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            atomLogoRedAzul(
              heightImg: MediaQuery.of(context).size.height * 0.2,
            ),
            moleculeRegisterBoat(),
          ],
        ),
      ),
    );
  }
}