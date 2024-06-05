import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismCodeVerification.dart';

class pageCodeVerification extends StatefulWidget {
  const pageCodeVerification({super.key});

  @override
  State<pageCodeVerification> createState() => _pageCodeVerificationState();
}

class _pageCodeVerificationState extends State<pageCodeVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismCodeVerification()
            ],
          )),
        )
      )
      
    );
  }
}