import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoMipescao.dart';
import 'package:pescadores/atomicDesign/organisms/organismsCreateAcount.dart';

class pageCreateAcount extends StatefulWidget {
  const pageCreateAcount({super.key});

  @override
  State<pageCreateAcount> createState() => _pageCreateAcountState();
}

class _pageCreateAcountState extends State<pageCreateAcount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xffffffff),
            child: Column(
              children: [
                organismsCreateAcount(),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
