import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organismsFishingArts.dart';

class pageFishengArts extends StatefulWidget {
  const pageFishengArts({super.key});

  @override
  State<pageFishengArts> createState() => _pageFishengArtsState();
}

class _pageFishengArtsState extends State<pageFishengArts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                
                color: Color(0xffffffff),
                child: Column(
                  children: [
                      organismsFishingArts()
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}