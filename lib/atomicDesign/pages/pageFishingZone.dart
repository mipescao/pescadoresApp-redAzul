import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organismsFishingZone.dart';

class pageFishingArts extends StatefulWidget {
  const pageFishingArts({super.key});

  @override
  State<pageFishingArts> createState() => _pageFishingArtsState();
}

class _pageFishingArtsState extends State<pageFishingArts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                organismsFishingZone()
              ],
            ),
          )
        )
      ));
  }
}