import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismInfoProfile.dart';

class pageInfoProfile extends StatefulWidget {
  const pageInfoProfile({super.key});

  @override
  State<pageInfoProfile> createState() => _pageInfoProfileState();
}

class _pageInfoProfileState extends State<pageInfoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismInfoProfile()
            ],
          )),
        )
      )
      
    );
  }
}