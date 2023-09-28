import 'package:flutter/material.dart';

class atomLogoMipescao extends StatefulWidget {

  const atomLogoMipescao({super.key,});

  @override
  State<atomLogoMipescao> createState() => _atomLogoMipescaoState();
}

class _atomLogoMipescaoState extends State<atomLogoMipescao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      child: Image.asset(
        'assets/images/logo-mipescao.png',
        height: 90.0,
      ),
      // child: SvgPicture.asset(
      //   'assets/succesAlert.png',
      //   width: widget.widthImg,
      // ),
    );
  }
}
