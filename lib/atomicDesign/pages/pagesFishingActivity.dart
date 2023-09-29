
import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/molecules/moleculeFishingActivity.dart';

class pageFishingActivity extends StatefulWidget {
  const pageFishingActivity({super.key});

  @override
  State<pageFishingActivity> createState() => _pageFishingActivityState();
}

class _pageFishingActivityState extends State<pageFishingActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              moleculeFishingActivity()
            ],
          ),
        ),
      )),
    );
  }
}