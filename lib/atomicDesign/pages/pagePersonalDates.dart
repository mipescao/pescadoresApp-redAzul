import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organismsRegisterUser1.dart';

class pagePersonalDates extends StatefulWidget {
  const pagePersonalDates({super.key});

  @override
  State<pagePersonalDates> createState() => _pagePersonalDatesState();
}

class _pagePersonalDatesState extends State<pagePersonalDates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [organismsRegisterUser1()],
          ),
        ),
      ),
    );
  }
}
