import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organimsMoreAboutYoy.dart';

class pageMoreAboutYou extends StatefulWidget {
  const pageMoreAboutYou({super.key});

  @override
  State<pageMoreAboutYou> createState() => _pageMoreAboutYouState();
}

class _pageMoreAboutYouState extends State<pageMoreAboutYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                organimsMoreAboutYoy(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
