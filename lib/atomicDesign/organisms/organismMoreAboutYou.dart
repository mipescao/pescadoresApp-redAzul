import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/atomicDesign/molecules/moleculeInputMoreAboutYou.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismMoreAboutYou extends StatefulWidget {
  const organismMoreAboutYou({super.key});

  @override
  State<organismMoreAboutYou> createState() => _organismMoreAboutYouState();
}

class _organismMoreAboutYouState extends State<organismMoreAboutYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: checkHeightScreen(context) ,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: Image.asset(
              'assets/images/logo-RedAzul.png',
              width: MediaQuery.of(context).size.width * 0.75 ,
            ),
          ),
          sizedBoxAll.sizedBoxHeight,
          atomTitle(title: "Ahora cuéntanos sobre ti:", colorTitle: colores.blue1,),
          sizedBoxAll.sizedBoxHeight,
          moleculeInputMoreAboutYou()
        ],
      ),
    );
  }
}