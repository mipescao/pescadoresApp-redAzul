import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismFinancialActivity.dart';

class pageFinancialActivity extends StatefulWidget {
  const pageFinancialActivity({super.key});

  @override
  State<pageFinancialActivity> createState() => _pageFinancialActivityState();
}

class _pageFinancialActivityState extends State<pageFinancialActivity> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismFinancialActivity()
            ],
          )),
        )
      )
      
    );
  }
}