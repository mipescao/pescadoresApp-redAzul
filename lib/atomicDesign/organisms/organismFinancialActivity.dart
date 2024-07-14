import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomQuestionSelect.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomYestOrNot.dart';
import 'package:pescadoresapp_redazul/atomicDesign/molecules/moleculeCardsOptions.dart';


class organismFinancialActivity extends StatefulWidget {
  const organismFinancialActivity({super.key});

  @override
  State<organismFinancialActivity> createState() => _organismFinancialActivityState();
}

class _organismFinancialActivityState extends State<organismFinancialActivity> {
  bool sellMipescaoProducts = true;
  bool needTraining = false;
  List<basicSelect> optionsSelect = <basicSelect>[basicSelect(value: 1, label: 'No sé como funciona'), basicSelect(value: 2, label: 'Ya vendo de otra manera'), basicSelect(value: 3, label: 'No confío en la internet'), basicSelect(value: 4, label: 'Me parece complicado') , basicSelect(value: 5, label: 'No lo necesito'), basicSelect(value: 6, label: 'No soy quien vende mis productos') ];
  String whyDontSell = "";

  bool haveBankAcount = true;
  List<basicSelect> bankAcount = <basicSelect>[basicSelect(value: 1, label: 'Nequi'), basicSelect(value: 2, label: 'Bancolombia A la mano'), basicSelect(value: 3, label: 'Bancolombia'), basicSelect(value: 4, label: 'Daviplata') , basicSelect(value: 5, label: 'Davivienda'), basicSelect(value: 6, label: 'Banco de Bogotá'), basicSelect(value: 7, label: 'BBVA'),basicSelect(value: 8, label: 'Banco de Occidente'),basicSelect(value: 9, label: 'Scotiabank Colpatria'),basicSelect(value: 10, label: 'Banco Itaú'),basicSelect(value: 11, label: 'GNB Sudameris'),basicSelect(value: 12, label: 'Banco Agrario'), basicSelect(value: 13, label: 'Banco Popular'),basicSelect(value: 14, label: 'Banco Caja Social'),basicSelect(value: 15, label: 'Banco AV Villas'),basicSelect(value: 16, label: 'Otro') ];
  String selectedEntity = "";
  bool needGuidance = false;

  bool shareInformation = true;

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
          atomTitle(title: "Háblanos de tu actividad financiera:", colorTitle: colores.blue1,),
          sizedBoxAll.sizedBoxHeight,
          atomText(text: 'Para vender tus productos por medio de miPescao debes tener una cuenta bancaria', colorText: colores.blue1, fontSize: scaledFontSize(20.0),),
          sizedBoxAll.sizedBoxHeight,
          moleculeCardsOptions(
            textCard: '¿Quieres vender tus productos por medio de miPescao?',
            nameBoolen: haveBankAcount,
            secondPartCard: true,
            functionCard: (value){
              setState(() {
                haveBankAcount = value;
              });
            },
            nameWidget : haveBankAcount ? atomYesOrNot(textAtom: '¿Necesitas capacitación?', functionAtom: (value) {
              setState(() {
                needTraining = value;
              });
            },) : atomQuestionSelect(textAtom: '¿Porqué no venderías por miPescao?', selectAtom: optionsSelect, functionSelect: (value){
                setState(() {
                  whyDontSell = value;

                });
            })
          ),
          sizedBoxAll.sizedBoxHeight,
          moleculeCardsOptions(
            textCard: '¿Tienes una cuenta bancaria?',
            nameBoolen: sellMipescaoProducts,
            secondPartCard: true,
            functionCard: (value){
              setState(() {
                sellMipescaoProducts = value;
              });
            },
            nameWidget : sellMipescaoProducts ? atomQuestionSelect(textAtom: '¿Con qué entidad?', selectAtom: bankAcount, functionSelect: (value){
                setState(() {
                  selectedEntity = value;
                });
            })
            : 
            atomYesOrNot(textAtom: '¿Necesitas orientación para tenerla?', functionAtom: (value) {
              setState(() {
                needGuidance = value;
              });
            },)
          ),
          sizedBoxAll.sizedBoxHeight,
          moleculeCardsOptions(
            textCard: '¿Aceptas que miPescao comparta información de tu actividad comercial pesquera con entidades financieras y otras para acceder a créditos y beneficios?',
            nameBoolen: sellMipescaoProducts,
            secondPartCard: false,
            functionCard: (value){
              setState(() {
                shareInformation = value;
              });
            },
            
          ),
          sizedBoxAll.sizedBoxHeight,
          atomButtonGrayForm(text: "Enviar", onPressed: (){

          }),
          sizedBoxAll.sizedBoxHeight,
        ],
      ),

    );
  }

  saveInfo(){
    showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModal(
            title: 'Correo verificado correctamente',
            descripcion:
                'Dale aceptar para continuar',
            imagen: 'assets/successAlert.png',
            textoboton1: '',
            funcion1: noFunction,
            textoboton2: 'Aceptar',
            funcion2: goNext,
          ),
        ); // Usar el widget de la modal personalizada
      },
    );
  }

  goNext(context1){
    Navigator.pushNamed(context, '/termsAndConditions');
  }

}

