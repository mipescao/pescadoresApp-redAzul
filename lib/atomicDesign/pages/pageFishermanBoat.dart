import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organismsFishermanBoat.dart';

class pageFisheremanBoat extends StatefulWidget {
  const pageFisheremanBoat({super.key});

  @override
  State<pageFisheremanBoat> createState() => _pageFisheremanBoatState();
}

class _pageFisheremanBoatState extends State<pageFisheremanBoat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              organismsFishermanBoat(),
            ],
          ),
        )),
    );
  }
}