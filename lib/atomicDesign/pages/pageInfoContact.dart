import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismInfoContact.dart';


class pageInfoContact extends StatefulWidget {
  const pageInfoContact({super.key});

  @override
  State<pageInfoContact> createState() => _pageInfoContactState();
}

class _pageInfoContactState extends State<pageInfoContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismInfoContact(),
            ],
          )),
        )
      )
      
    );
  }
}