import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pescadores/atomicDesign/pages/pageMain.dart';
import 'package:pescadores/styles/globalStyles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modulo de pescadores',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Cambiar el color por defecto del cursor
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: colores.blue1,  // Color del cursor
          selectionColor: colores.blue1,  // Color de la selección
          selectionHandleColor: colores.blue1,  // Color del manipulador de selección
        ),
        
        // textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      home: pageMainPage(),
    );
  }
}