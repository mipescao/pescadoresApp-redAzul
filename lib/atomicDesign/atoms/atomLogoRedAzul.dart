import 'package:flutter/material.dart';

class atomLogoRedAzul extends StatefulWidget {
  final double heightImg;

  const atomLogoRedAzul({super.key, required this.heightImg});

  @override
  State<atomLogoRedAzul> createState() => _atomLogoRedAzulState();
}

class _atomLogoRedAzulState extends State<atomLogoRedAzul> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      child: Image.asset(
        'assets/images/logo-RedAzul.png',
        height: widget.heightImg,
      ),
      // child: SvgPicture.asset(
      //   'assets/succesAlert.png',
      //   width: widget.widthImg,
      // ),
    );
  }
}
