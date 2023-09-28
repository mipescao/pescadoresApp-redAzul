import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/organisms/organismsInfoContact.dart';

class pageInfoContact extends StatefulWidget {
  const pageInfoContact({super.key});

  @override
  State<pageInfoContact> createState() => _pageInfoContactState();
}

class _pageInfoContactState extends State<pageInfoContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            organismsInfoContact(),
          ],
        ),
      ),
    );
  }
}