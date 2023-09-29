import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelects80%.dart';
import 'package:pescadores/styles/stylesfinancialActivity.dart';

// variables  de los checkbox
bool valueSiSellProducts = true;
bool valueNoSellProducts = false;

bool valueSiNeedsTraining = true;
bool valueNoNeedsTraining = false;

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
                        color: Color(0xff0095CD),
                      ),
                      
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Text(
                              '¿Quieres vender tus productos por medio de miPescao?', style: styleFinancialActivity.textWhite, textAlign: TextAlign.center),
                          SizedBox(height: 15.0),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('Si', style: styleFinancialActivity.textWhite),
                                    SizedBox(width: 10.0),
                                    Container(
                                      // Personaliza el Checkbox usando un Container
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: valueSiSellProducts ? Color(0xffFBB03B) : Color(0xff0095CD),
                                        border: Border.all(
                                          color: Color(0xffffffff)
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          onTap: () {
                                            // Cambia el estado del Checkbox al hacer clic
                                            setState(() {
                                            if (valueSiSellProducts == true) {
                                              valueNoSellProducts = true;
                                              valueSiSellProducts = false;
                                            } else{
                                              valueNoSellProducts = false;
                                              valueSiSellProducts = true;
                                            }
                                            });

                                          },
                                          child: valueSiSellProducts
                                              ? Icon(
                                                  Icons.check,
                                                  size: 24.0,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 24.0,
                                                  color: Colors.transparent,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 50.0,),
                                Row(
                                  children: [
                                    Text('No', style:  styleFinancialActivity.textWhite),
                                    SizedBox(width: 10.0),
                                    Container(
                                      // Personaliza el Checkbox usando un Container
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: valueNoSellProducts ? Color(0xffFBB03B) : Color(0xff0095CD),
                                        border: Border.all(
                                          color: Color(0xffffffff)
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          onTap: () {
                                            // Cambia el estado del Checkbox al hacer clic
                                            setState(() {
                                              if (valueNoSellProducts == true) {
                                                valueSiSellProducts = true;
                                                valueNoSellProducts = false;
                                              } else{
                                                valueSiSellProducts = false;
                                                valueNoSellProducts = true;
                                              }
                                            });
                                            
                                          },
                                          child: valueNoSellProducts
                                              ? Icon(
                                                  Icons.check,
                                                  size: 24.0,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.check_box_outline_blank,
                                                  size: 24.0,
                                                  color: Colors.transparent,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.0)
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

String optionsNoSellSelected = 'No sé como funciona';
final List<String> optionsNoSell = [
  'No sé como funciona',
  'Ya vendo de otra manera',
  'No confío en la internet',
  'Me parece complicado',
  'No lo necesito',
  'No soy quien vende mis productos',
];

class noSellProducts extends StatefulWidget {
  const noSellProducts({super.key});

  @override
  State<noSellProducts> createState() => _noSellProductsState();
}

class _noSellProductsState extends State<noSellProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15.0),
          Text('¿Porqué no venderías por miPescao?', style:  styleFinancialActivity.textBlue, textAlign: TextAlign.center),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SelectionWidget(
                items: optionsNoSell,
                selectedItem: optionsNoSellSelected,
                onChanged: (selectedItem) {
                  // Manejar la opción seleccionada aquí
                  setState(() {
                    optionsNoSellSelected = selectedItem!;
                  });
                  // print('Opción seleccionada: $selectedItem');
                },
              ),
            ],
          ),
          SizedBox(height: 15.0)
        ],
      ),
    ),
  );
  }
}

class siSellProductos extends StatefulWidget {
  const siSellProductos({super.key});

  @override
  State<siSellProductos> createState() => _siSellProductosState();
}

class _siSellProductosState extends State<siSellProductos> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15.0),
          Text('¿Necesitas capacitación?', style:  styleFinancialActivity.textBlue, textAlign: TextAlign.center),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                children: [

                  Text('Si', style:  styleFinancialActivity.textBlue,),
                  SizedBox(width: 10.0),
                  Container(
                    // Personaliza el Checkbox usando un Container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: valueSiNeedsTraining ? Color(0xff0095CD) : Color(0xffffffff),
                      border: Border.all(
                        color: Color(0xff707070)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          // Cambia el estado del Checkbox al hacer clic
                          setState(() {
                          if (valueSiNeedsTraining == true) {
                            valueNoNeedsTraining = true;
                            valueSiNeedsTraining = false;
                          } else{
                            valueNoNeedsTraining = false;
                            valueSiNeedsTraining = true;
                          }                            

                          });

                        },
                        child: valueSiNeedsTraining
                            ? Icon(
                                Icons.check,
                                size: 24.0,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                size: 24.0,
                                color: Colors.transparent,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 50.0,),
              Row(
                children: [
                  Text('No', style:  styleFinancialActivity.textBlue),
                  SizedBox(width: 10.0),
                  Container(
                    // Personaliza el Checkbox usando un Container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: valueNoNeedsTraining ? Color(0xff0095CD) : Color(0xffffffff),
                      border: Border.all(
                        color: Color(0xff707070)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          // Cambia el estado del Checkbox al hacer clic
                            setState(() {
                              if (valueNoNeedsTraining == true) {
                              valueSiNeedsTraining = true;
                              valueNoNeedsTraining = false;
                              } else{
                                valueSiNeedsTraining = false;
                                valueNoNeedsTraining = true;
                              }  
                            });
                        },
                        child: valueNoNeedsTraining
                            ? Icon(
                                Icons.check,
                                size: 24.0,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                size: 24.0,
                                color: Colors.transparent,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.0)
        ],
      ),
    ),
  );
  }
}

// siSellProductos() {
//   return 
// }
