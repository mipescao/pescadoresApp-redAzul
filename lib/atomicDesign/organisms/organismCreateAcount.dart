import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismCreateAcount extends StatefulWidget {
  const organismCreateAcount({super.key});

  @override
  State<organismCreateAcount> createState() => _organismCreateAcountState();
}

class _organismCreateAcountState extends State<organismCreateAcount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: checkHeightScreen(context) ,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            // child: atomLogoRedAzul(
            //   widthLogo: MediaQuery.of(context).size.width * 0.75,
            // ),
            child: Image.asset(
              'assets/images/logo-RedAzul.png',
              width: MediaQuery.of(context).size.width * 0.75 ,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: atomTitle(title: 'Has iniciado tu registro como pescador', colorTitle:colores.blue1,),
          ),

          
        ]
      )
    );
  }
}