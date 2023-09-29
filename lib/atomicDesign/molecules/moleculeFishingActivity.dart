
import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonOptions.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/pages/pageFishingZone.dart';

class moleculeFishingActivity extends StatefulWidget {
  const moleculeFishingActivity({super.key});

  @override
  State<moleculeFishingActivity> createState() => _moleculeFishingActivityState();
}

class _moleculeFishingActivityState extends State<moleculeFishingActivity> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
            atomLogoRedAzul(heightImg: MediaQuery.of(context).size.height * 0.2),
            SizedBox(height: 40.0,),
            atomTitle(title: 'Háblanos de tu actividad pesquera:'),
            SizedBox(height: 80.0,),
            atomButtonOptions(text: 'No tengo una embarcación', function: noBoat,image: 'assets/images/pescador.png', widthImage: 49.0, colorButton: Color(0xff0071BC)),
            SizedBox(height: 80.0,),
            atomButtonOptions(text: 'Tengo una o más embarcaciones', function: siBoat,image: 'assets/images/pescadorBote.png', widthImage: 72.0, colorButton: Color(0xff0487D9))
        ],
      ),
    );
  }
}


noBoat(context){
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageFishingArts()),
  );
}

siBoat(){

}