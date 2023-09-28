import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pescadores/atomicDesign/pages/pageMain.dart';

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
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      home: const pageMainPage(),
    );
  }
}
