import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeInputsMoreAboutYou.dart';

class organimsMoreAboutYou extends StatefulWidget {
  const organimsMoreAboutYou({super.key});

  @override
  State<organimsMoreAboutYou> createState() => _organimsMoreAboutYouState();
}

class _organimsMoreAboutYouState extends State<organimsMoreAboutYou> {
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
