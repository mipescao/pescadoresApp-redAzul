import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismselectTypeUser.dart';

class pageSelectTypeUser extends StatefulWidget {
  const pageSelectTypeUser({super.key});

  @override
  State<pageSelectTypeUser> createState() => _pageSelectTypeUserState();
}

class _pageSelectTypeUserState extends State<pageSelectTypeUser> {


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
      
    );
  }
}