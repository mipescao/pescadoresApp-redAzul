import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismMoreAboutYou.dart';

class pageMoreAboutYou extends StatefulWidget {
  const pageMoreAboutYou({super.key});

  @override
  State<pageMoreAboutYou> createState() => _pageMoreAboutYouState();
}

class _pageMoreAboutYouState extends State<pageMoreAboutYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismMoreAboutYou()
            ],
          )),
        )
      )
      
    );
  }
}