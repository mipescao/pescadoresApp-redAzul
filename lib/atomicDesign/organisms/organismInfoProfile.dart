import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputDate.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomOptionSelected.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismInfoProfile extends StatefulWidget {
  const organismInfoProfile({super.key});

  @override
  State<organismInfoProfile> createState() => _organismInfoProfileState();
}

class _organismInfoProfileState extends State<organismInfoProfile> {
  List<basicSelect> gender = <basicSelect>[ basicSelect(value: 1, label: 'Atlantico'), basicSelect(value: 2, label: 'Atlantico')];
  List<basicSelect> etnia = <basicSelect>[ basicSelect(value: 1, label: 'Atlantico'), basicSelect(value: 2, label: 'Atlantico')];
  DateTime? date;


  // booleandos de las opciones de la tabla.
  bool headOfTheFamily = false;
  bool disability = false;
  bool displaced = false;
  bool victimOfTheConflict = false;
  bool lgtbiq = false;



  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: checkHeightScreen(context) ,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: Image.asset(
              'assets/images/logo-RedAzul.png',
              width: MediaQuery.of(context).size.width * 0.75 ,
            ),
          ),
          sizedBoxAll.sizedBoxHeight,
          atomTitle(title: "Cuéntanos algo más sobre ti:", colorTitle: colores.blue1,),
          sizedBoxAll.sizedBoxHeight,
          atomInputDate(
            nameInput: 'Fecha de nacimiento',
            required: true,
            saveValue: (saveValue){
              setState(() {
                date = saveValue;
              });
            },
          ),
          sizedBoxAll.sizedBoxHeight,
          atomSelect(itemsSelect: gender  , nameSelect: "Genero"),
          sizedBoxAll.sizedBoxHeight,
          atomSelect(itemsSelect: etnia  , nameSelect: "Grupo etnico"),
          sizedBoxAll.sizedBoxHeight,
          Container(
            padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
            width: 400,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
            ),
            decoration: BoxDecoration(
              color: colores.blue2,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [

                atomOptionsSelected(
                  nameVariable: headOfTheFamily,
                  text: 'Soy cabeza de familia',
                  backgroundColor: colores.blue2, 
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(10.0), // Set your desired radius
                    topRight: Radius.circular(10.0),
                  ),
                  functionCLick: (trueFalse){
                    setState(() {
                      headOfTheFamily = trueFalse;
                    });
                  },
                ),
                atomOptionsSelected(nameVariable: disability, text: 'Soy una persona en condición de discapacidad.', backgroundColor: colores.blue3, functionCLick: (trueFalse){
                  setState(() {
                    disability = trueFalse;
                  });
                },),
                atomOptionsSelected(nameVariable: displaced, text: 'Soy desplazado/a', backgroundColor: colores.blue2, functionCLick: (trueFalse){
                  setState(() {
                    displaced = trueFalse;
                  });
                },),
                atomOptionsSelected(nameVariable: victimOfTheConflict, text: 'Soy victima del conflicto armado.', backgroundColor: colores.blue3, functionCLick: (trueFalse){
                  setState(() {
                    victimOfTheConflict = trueFalse;
                  });
                },),
                atomOptionsSelected(
                  nameVariable: lgtbiq,
                  text: 'Pertenezco a la comunidad LGTBIQ+.',
                  backgroundColor: colores.blue2,
                  borderRadius:  BorderRadius.only(
                    bottomLeft: Radius.circular(10.0), // Set your desired radius
                    bottomRight: Radius.circular(10.0),
                  ),
                  functionCLick: (trueFalse){
                    setState(() {
                      lgtbiq = trueFalse;
                    });
                  },
                ),
              ],
            ),
          ),
          sizedBoxAll.sizedBoxHeight,
          atomButtonGrayForm(text: "Enviar", onPressed: (){
            
          }),
          sizedBoxAll.sizedBoxHeight,
        ],
      ),
    );
  }
}

