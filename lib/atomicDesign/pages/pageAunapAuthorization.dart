import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/organisms/organismAunapAuthorization.dart';

class pageAunapAuthorization extends StatefulWidget {
  const pageAunapAuthorization({super.key});

  @override
  State<pageAunapAuthorization> createState() => _pageAunapAuthorizationState();
}

class _pageAunapAuthorizationState extends State<pageAunapAuthorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              organismAunapAuthorization()
            ],
          )),
        )
      )
    );
  }
}