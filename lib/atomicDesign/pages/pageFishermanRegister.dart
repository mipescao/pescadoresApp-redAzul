import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoMipescao.dart';
import 'package:pescadores/atomicDesign/organisms/organismsFishermanRegisterUser.dart';

class pageFishermanRegister extends StatefulWidget {
  const pageFishermanRegister({super.key});

  @override
  State<pageFishermanRegister> createState() => _pageFishermanRegisterState();
}

class _pageFishermanRegisterState extends State<pageFishermanRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                color: Color(0xffffffff),
                child: Column(
                  children: [
                    organismsFishermanRegisterUser(),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Color(0xffffffff),
          child: atomLogoMipescao(),
        ));
  }
}
