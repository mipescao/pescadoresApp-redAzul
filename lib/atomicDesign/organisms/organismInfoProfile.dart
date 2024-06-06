import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputDate.dart';
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
            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
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

                

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class optionsSelected extends StatefulWidget {
  final bool nameVariable;
  final String text;
  final Color backgroundColor;
  const optionsSelected({super.key, required this.nameVariable, required this.text, required this.backgroundColor});

  @override
  State<optionsSelected> createState() => _optionsSelectedState();
}

class _optionsSelectedState extends State<optionsSelected> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colores.blue2,
      padding: EdgeInsets.only(top: 15.0, left: MediaQuery.of(context).size.height * 0.02, right: MediaQuery.of(context).size.height * 0.02),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                // if(widge == true){
                //   widge = false;
                // }else{
                //   widge = true;
                // }
              });
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
                color: widget.nameVariable
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
              child: widget.nameVariable
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
          SizedBox(width: MediaQuery.of(context).size.height * 0.02,),
          // atomText(text: "Pertenezco a la comunidad LGTBIQ+.", colorText: colores.white, )
          Flexible(
            child: Text("Pertenezco a la comunidad LGTBIQ+.", overflow: TextOverflow.ellipsis, style: TextStyle(
              fontSize: scaledFontSize(18.0),
              fontFamily: "NunitoRegular",
              fontWeight: FontWeight.normal,
              color: colores.white,)
            ),
          )
        ],
      ),
    );
  }
}