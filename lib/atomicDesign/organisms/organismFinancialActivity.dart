import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomSubtitle.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculesSectionFinancialActivity.dart';

class organismFinancialActivity extends StatefulWidget {
  const organismFinancialActivity({super.key});

  @override
  State<organismFinancialActivity> createState() =>
      _organismFinancialActivityState();
}

class _organismFinancialActivityState extends State<organismFinancialActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          atomLogoRedAzul(
            heightImg: MediaQuery.of(context).size.height * 0.2,
          ),
          atomTitle(title: 'Háblanos de tu actividad financiera:'),
          SizedBox(
            height: 30.0,
          ),
          atomSubtitle(
              subtitle:
                  'Para vendertus productos por medio  de miPescao debes tener una cuenta bancaria'),
          SizedBox(
            height: 30.0,
          ),
          moleculeSellProductsmiPescao()
        ],
      ),
    );
  }
}
