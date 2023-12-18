import 'package:flutter/material.dart';
import 'package:pescadores/styles/globalStyles.dart';

class atomSelect<String> extends StatefulWidget {

  final List itemsSelect;
  final void Function(String?)? onChanged;
  final void Function(String?, String?)? onChangedTwo;
  final nameSelect;
  final bool? requiredSelect;
  final bool? twoParams;
  

  const atomSelect({super.key,
    required this.itemsSelect,
    this.onChanged,
    required this.nameSelect,
    this.requiredSelect,
    this.onChangedTwo,
    this.twoParams,});

  @override
  State<atomSelect> createState() => _atomSelectState();
}

class _atomSelectState extends State<atomSelect> {
  String selectedValue = '';

  bool someSelected = false;
  // final List listDocuments = <Object>[
  //   {'value': '1', 'label': 'Cedula de ciudadania'},
  //   {'value': '2', 'label': 'Pasaporte'},
  //   {'value': '3', 'label': 'Tarjeta de identidad'},
  // ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showOptionsDialog(context);
      },
      child: Container(

        child: Stack(
          children: [
            Container(
              height: scaledFontSize(47.0),
              width: 400.0,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
              padding: EdgeInsets.only(top:  5.0, bottom: 5.0, left: 10.0, right: 10.0),
              decoration: styleInputs.decorationInputs,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Icono para centrar
                  Icon(Icons.arrow_drop_down, color: Colors.transparent, size: 28.0,),
                  Container(
                    width: (MediaQuery.of(context).size.width * 0.9) - 76.0,
                    child: someSelected ? Text(selectedValue, style: TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal),  textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 1,) : Text(widget.nameSelect, style:  TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD).withOpacity(0.4), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal ), textAlign: TextAlign.center,)
                  ), 
                  Icon(Icons.arrow_drop_down_rounded, color: Color(0xff0095CD),size: 28.0,),
                ],
              ),
            ),
            widget.requiredSelect == null || widget.requiredSelect == true ? Transform.translate(
                offset:  Offset(0, -20.0),
                child: Container(
                  width: 400.0,
                  constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.90),
                  // padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  color: Colors.transparent,
                  child: Center(
                    child: Container(
                      
                      color: Colors.white,
                      // width: ,
                      child: Text(
                        'Este campo es óbligatorio',
                        style: TextStyle(color: colores.gray4, fontSize:scaledFontSize(16.0), backgroundColor: colores.white,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ): Container()
          ],
        ),
      ),
    );
        
  }

  Future<void> _showOptionsDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: colores.white,
          title: Text(widget.nameSelect, style: TextStyle(fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold", fontWeight: FontWeight.normal, color: colores.blue5), textAlign: TextAlign.center,),
          content:SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.itemsSelect.map((document) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(document.label, style: textAll.textBlue18, textAlign: TextAlign.center,),
                      onTap: () {
                        setState(() {
                          someSelected = true; //Siempre debe ir esta variable
                          selectedValue = document.label;
                        });
                        Navigator.of(context).pop();
                        widget.twoParams == null || widget.twoParams == false ? widget.onChanged!((document.value).toString()) : widget.onChangedTwo!((document.value).toString(), (document.label).toString());
                      },
                    ),
                    Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.90
                      ),
                      child: Divider(
                        color: colores.gray5,
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                  ],
                );
                
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
