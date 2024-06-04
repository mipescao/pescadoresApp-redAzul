import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismselectTypeUser.dart';

class pageCreateAcount extends StatefulWidget {
  const pageCreateAcount({super.key});

  @override
  State<pageCreateAcount> createState() => _pageCreateAcountState();
}

class _pageCreateAcountState extends State<pageCreateAcount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismCreateAcount()
            ],
          )),
        )
      )
      
    );;
  }
}