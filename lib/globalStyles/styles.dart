import 'package:flutter/material.dart';
import 'dart:ui';

double checkHeightScreen(context) {
  final height = MediaQuery.of(context).size.height - kToolbarHeight;
  return height;
}

double checkWidthScreen() {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: deprecated_member_use
  return window.physicalSize.width / window.devicePixelRatio;
}

double scaledFontSize(double originalSize) {
  // Obtén el ancho de la pantalla
  double screenWidth = window.physicalSize.width / window.devicePixelRatio;
  double widthPage = checkWidthScreen();
  double scale;
  // Define un factor de escala (puedes ajustar esto según tus necesidades)
  if(widthPage < 200){
    scale = screenWidth / 393;  // Por ejemplo, se asume que el diseño se basa en un ancho de pantalla de 360 puntos.
    // Escala el tamaño de fuente original
    double scaledSize = originalSize * scale;

    return scaledSize;
  }else{
    scale = screenWidth / 393;  // Por ejemplo, se asume que el diseño se basa en un ancho de pantalla de 360 puntos.
    double scaledSize = originalSize * scale;
    return scaledSize;
  }
  

  
}

// Colores de la paleta de colores que sera utilizados para todos los estilos de la aplicacíón
class colores {
  static const Color white = Colors.white;

  // Azules

  static const Color blue1 = Color(0xff0095cd);
  static const Color blue2 = Color(0xff29ABE2);
  static const Color blue3 = Color(0xff0071BC);
  static const Color blue4 = Color(0xff2784c6);
  static const Color blue5 = Color(0xff29ABE2);
  static const Color blue6 = Color(0xff0487D9);
  // grises y negros

  static const Color gray1 = Color(0xffa2a2a2);
  static const Color gray2 = Color(0xff707070);
  static const Color gray3 = Color(0xff939393);
  static const Color gray4 = Color(0xffCCCCCC);
  static const Color gray5 = Color(0xff9A9A9A);
  static const Color black = Color(0xff000000);

  // Otros

  static const Color orange = Color(0xffF96C00);
  static const Color green = Color(0xff23A63F);
  static const Color red = Color(0xffFF0000);
}

// boxShadowGeneral
class generalShadow {
  static const BoxShadow shadowPrimary = BoxShadow(
    color: Color(0x30000000),
    spreadRadius: 0.5,
    blurRadius: 7,
    offset: Offset(3, 6),
  );
}

// estilos para los inputs: les agrega el color de fondo, el  border radius y su boxShadow
class styleInputs {
  static BoxDecoration decorationInputs = BoxDecoration(
    color: Color(0xffffffff),
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  );

    static BoxDecoration decorationInputsBlue = BoxDecoration(
    color: colores.blue2,
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  );

  static BoxDecoration decorationCardTraceability = BoxDecoration(
    border: Border.all(
      color: Color(0xff0487D9),
      width: 2,
    ),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: colores.gray2.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 5), // Desplazamiento hacia abajo
      ),
    ],
    color: colores.white
  );

  static EdgeInsets padingCardTraceability = EdgeInsets.all(15.0);
}

// Salto de linea entre widgets
class sizedBoxAll {
  static SizedBox sizedBoxHeight = SizedBox(
    height: 30.0,
  );

  static SizedBox sizedBoxHeight2 = SizedBox(
    height: 20.0,
  );


  static SizedBox sizedBoxWidth = SizedBox(
    width: 5.0,
  );

  static SizedBox sizedBoxHeight3 = SizedBox(
    height: 10.0,
  );
}

// diferentes estilos para los textos
class textAll {
  static TextStyle titleBlueLight= TextStyle(
    fontSize: scaledFontSize(25.0),
    fontFamily: "NunitoBold",
    fontWeight: FontWeight.bold,
    color: colores.blue5,
  );
}


double getBodyHeight(BuildContext context) {
  // Obtén la altura total de la pantalla
  double screenHeight = MediaQuery.of(context).size.height;

  // Obtén la altura del AppBar si existe
  double appBarHeight = Scaffold.of(context).appBarMaxHeight ?? 0.0;

  // Calcula el alto exacto de la SafeArea restando la altura del AppBar
  double safeAreaHeight = screenHeight - appBarHeight;

  return safeAreaHeight;
}

// diferentes tamaños para la altura de el logo de trazul

// class heightLogoTrazul {
//   static height  heitghStandar =  
// }



// 
class BackButtonInterceptorShow extends StatelessWidget {
  final Widget child;

  const BackButtonInterceptorShow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        // Mostrar un diálogo de confirmación

          return false;
        
      },
      child: child,
    );
  }
}