import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelectsYear.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeInputsMOreAboutYou.dart';

class organimsMoreAboutYoy extends StatefulWidget {
  const organimsMoreAboutYoy({super.key});

  @override
  State<organimsMoreAboutYoy> createState() => _organimsMoreAboutYoyState();
}

class _organimsMoreAboutYoyState extends State<organimsMoreAboutYoy> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            atomLogoRedAzul(
              heightImg: MediaQuery.of(context).size.height * 0.2,
            ),
            moleculeInputsMOreAboutYou(),
          ],
        ),
      ),
    );
  }
}
