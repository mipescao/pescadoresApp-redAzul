import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class organismFinancialActivity extends StatefulWidget {
  const organismFinancialActivity({super.key});

  @override
  State<organismFinancialActivity> createState() => _organismFinancialActivityState();
}

class _organismFinancialActivityState extends State<organismFinancialActivity> {
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
          atomText(text: 'Para vender tus productos por medio de miPescao debes tener una cuenta bancaria', colorText: colores.blue1, fontSize: scaledFontSize(20.0),)

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

