import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoMipescao.dart';
import 'package:pescadores/atomicDesign/organisms/organismsCodeVerification.dart';

class pageCodeVerification extends StatefulWidget {
  const pageCodeVerification({super.key});

  @override
  State<pageCodeVerification> createState() => _pageCodeVerificationState();
}

class _pageCodeVerificationState extends State<pageCodeVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [organismscodeVerification()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
