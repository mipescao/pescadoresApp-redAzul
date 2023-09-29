import 'package:flutter/material.dart';

// variables  de los checkbox
bool valueSiSellProducts = true;
bool valueNoSellProducts = false;

class moleculeSellProductsmiPescao extends StatefulWidget {
  const moleculeSellProductsmiPescao({super.key});

  @override
  State<moleculeSellProductsmiPescao> createState() =>
      _moleculeSellProductsmiPescaoState();
}

class _moleculeSellProductsmiPescaoState
    extends State<moleculeSellProductsmiPescao> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(14.0),
        //   border: Border.all(
        //     color: Color(0xff0095cd), // Color del borde
        //     width: 1.0, // Grosor del borde
        //   ),
        // ),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            topRight: Radius.circular(14.0)),
                        color: Color(0xff0095cd),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              '¿Quieres vender tus productos por medio de miPescao?'),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text('Si'),
                                  Checkbox(
                                      value: valueSiSellProducts,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          if (valueSiSellProducts == true) {
                                            valueNoSellProducts = true;
                                            valueSiSellProducts = false;
                                          } else if (valueSiSellProducts ==
                                              false) {
                                            valueNoSellProducts = false;
                                            valueSiSellProducts = true;
                                          }
                                        });
                                      }),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('No'),
                                  Checkbox(
                                      value: valueNoSellProducts,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          if (valueNoSellProducts == true) {
                                            valueSiSellProducts = true;
                                            valueNoSellProducts = false;
                                          } else if (valueNoSellProducts ==
                                              false) {
                                            valueSiSellProducts = false;
                                            valueNoSellProducts = true;
                                          }
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0)),
                        border: Border.all(color: Color(0xff0095cd)),
                        color: Color(0xffffffff),
                      ),
                      child: valueSiSellProducts
                          ? siSellProductos()
                          : noSellProducts(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

siSellProductos() {
  return Container(
    child: Text("hola mundo si"),
  );
}

noSellProducts() {
  return Container(
    child: Text("hola mundo no"),
  );
}
