import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismTermsAndconditions.dart';

class pageTermsAndConditions extends StatefulWidget {
  const pageTermsAndConditions({super.key});

  @override
  State<pageTermsAndConditions> createState() => _pageTermsAndConditionsState();
}

class _pageTermsAndConditionsState extends State<pageTermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismTermsAndconditions()
            ],
          )),
        )
      )
      
    );
  }
}