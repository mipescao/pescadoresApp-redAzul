import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

// Fecha de creación: 13/07/2024
// Creado por: Juan José Arteta Maury
// Parametros
// Obligatorios
  // textCard: Texto que va ha aparecer en la tarjeta en la parte azul
  // nameBoolen: Nombre del booleano donde se va a guardar lo que el usuario escoga (Si o No)
  // secondPartCard: booleando que decide si se muestra o no la segunda parte de la tarjeta (La parte blanca)

// Opcionales
  // widthCard: Ancho de la tarjeta (Por defecto sera 400.0 o el 90% del ancho  de la pantalla)
  // nameWidget: widget con la información que se va amostrar en la parte blanca

class moleculeCardsOptions extends StatefulWidget {
  final double? widthCard;
  final String textCard;
  final bool nameBoolen;
  final bool? optionSelected;
  final Function(bool) functionCard;
  final bool secondPartCard;
  final Widget? nameWidget;
  const moleculeCardsOptions({super.key, this.widthCard, required this.textCard, required this.nameBoolen, this.optionSelected, required this.functionCard, required this.secondPartCard, this.nameWidget});

  @override
  State<moleculeCardsOptions> createState() => _moleculeCardsOptionsState();
}

class _moleculeCardsOptionsState extends State<moleculeCardsOptions> {
  
  @override
  Widget build(BuildContext context) {

    bool trueFalse = widget.nameBoolen;

    return Container(
      width: widget.widthCard ?? 400.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff0095CD),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.90,
      ),
      child: Column(
        children: [
          Container(
            color: Color(0xff0095CD),
            padding: EdgeInsets.only(top: 0.05 * 210, bottom: 0.05 * 210, left: 0.08 * 210, right: 0.08 * 210),
            child: Column(
              children: [
                Text(widget.textCard, style: TextStyle(color: Color(0xffffffff),fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold"), textAlign: TextAlign.center),
                sizedBoxAll.sizedBoxHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("Si", style: TextStyle(color: Color(0xffffffff), fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold"),),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                        onTap: (){
                          setState(() {
                            if(trueFalse == true){
                              trueFalse = false;
                            }else{
                              trueFalse = true;
                            }
                          });
                          widget.functionCard(trueFalse);
                        },
                        child: Container(
                          // Personaliza el Checkbox usando un Container
                          width: 35.0,
                          height: 35.0,
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                            maxHeight:MediaQuery.of(context).size.width * 0.80
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(5.0),
                            color: widget.nameBoolen
                                ? colores.orange
                                : Color(0xffffffff),
                            border: Border.all(
                                color: Color(0xffffffff)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: widget.nameBoolen
                          ? Icon(
                              Icons.check,
                              size: 24.0,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.check_box_outline_blank,
                              size: 24.0,
                              color: Colors.transparent,
                            )
                        ),
                      ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("No", style: TextStyle(color: Color(0xffffffff), fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold"),),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                        onTap: (){
                          setState(() {
                            if(trueFalse == true){
                              trueFalse = false;
                            }else{
                              trueFalse = true;
                            }

                            // widget.functionCLick(trueFalse);
                          });
                          widget.functionCard(trueFalse);
                        },
                        child: Container(
                          // Personaliza el Checkbox usando un Container
                          width: 35.0,
                          height: 35.0,
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                            maxHeight:MediaQuery.of(context).size.width * 0.80
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(5.0),
                            color: widget.nameBoolen
                                ? Color(0xffffffff)
                                : colores.orange,
                            border: Border.all(
                                color: Color(0xffffffff)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: widget.nameBoolen
                          ? Icon(
                              Icons.check_box_outline_blank,
                              size: 24.0,
                              color: Colors.transparent,
                            )
                          : Icon(
                              Icons.check,
                              size: 24.0,
                              color: Colors.white,
                            )
                        ),
                      ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          widget.secondPartCard ?  Container(
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                
            ),
            padding: EdgeInsets.only(top: 0.05 * 210, bottom: 0.05 * 210, left: 0.08 * 210, right: 0.08 * 210),
            child: widget.nameWidget
          ): Container(height: 0.0,),
        ],
      ),
    );
  }
}


