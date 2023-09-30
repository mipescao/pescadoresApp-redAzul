import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organismsFinancialActivity.dart';

class pageFinancialActivity extends StatefulWidget {
  const pageFinancialActivity({super.key});

  @override
  State<pageFinancialActivity> createState() => _pageFinancialActivityState();
}

class _pageFinancialActivityState extends State<pageFinancialActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [organismFinancialActivity()],
        ),
      )),
    );
  }
}
