import 'package:flutter/material.dart';

class colores{
  static const Color blue1 = Color(0xff0095cd);
  static const Color white = Colors.white;
  static const Color blue2 = Color(0xff3194d2);
  static const Color blue3 = Color(0xff2784c6);
  static const Color gray1 = Color(0xffa2a2a2);
  static const Color gray2 = Color(0xff707070);
  static const Color black = Color(0xff000000);

}

class styleFinancialActivity{
  
  static const TextStyle textBlue = TextStyle(
    fontSize: 22.0,
    color: colores.blue1,

  );

    static const TextStyle textWhite = TextStyle(
    fontSize: 22.0,
    color: colores.white,

  );

  static const TextStyle descriptionBlog = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: colores.gray1,
    fontFamily: "quicksand",
  );
}