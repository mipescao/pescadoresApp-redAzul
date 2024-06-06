import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismInfoContact extends StatefulWidget {
  const organismInfoContact({super.key});

  @override
  State<organismInfoContact> createState() => _organismInfoContactState();
}

class _organismInfoContactState extends State<organismInfoContact> {

  // lista del select
  List<basicSelect> departament = <basicSelect>[ basicSelect(value: 1, label: 'Atlantico'), basicSelect(value: 2, label: 'Atlantico')];
  List<basicSelect> municipio = <basicSelect>[ basicSelect(value: 1, label: 'Barranquilla'), basicSelect(value: 2, label: 'Soledad')];

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
          atomTitle(title: "Danos tu información de contacto:", colorTitle: colores.blue1,),
          sizedBoxAll.sizedBoxHeight,
          atomSelect(itemsSelect: departament, nameSelect: "Departamento"),
          sizedBoxAll.sizedBoxHeight,
          atomSelect(itemsSelect: municipio, nameSelect: "Municipio"),
          sizedBoxAll.sizedBoxHeight,
          atomInputsForm(textInput: "Dirección", typeKey: TextInputType.text),
          sizedBoxAll.sizedBoxHeight,
          atomInputsForm(textInput: "Telefono", typeKey: TextInputType.number),
          sizedBoxAll.sizedBoxHeight,
          atomInputsForm(textInput: "Teléfono para emergrncias", typeKey: TextInputType.number, textRequired: "",),
          sizedBoxAll.sizedBoxHeight,
          sizedBoxAll.sizedBoxHeight,
          atomButtonGrayForm(text: "Enviar", onPressed: (){
            infoSavedCorrectly();
          })
        ],
      ),
    );
  }

  // Esta función abre una modal que dice que la infomación se guardo correctamente.
  infoSavedCorrectly() {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModal(
            title: 'Información guardada correctamente',
            descripcion:
                'Dale aceptar para continuar',
            imagen: 'assets/successAlert.png',
            textoboton1: '',
            funcion1: noFunction,
            textoboton2: 'Aceptar',
            funcion2: goNextSection,
          ),
        ); // Usar el widget de la modal personalizada
      },
    );
  }


  goNextSection(context1){
    Navigator.pushNamed(context, '/infoProfile');
  }
}