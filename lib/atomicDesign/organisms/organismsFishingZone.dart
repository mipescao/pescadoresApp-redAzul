import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomSubtitle.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/molecules/moleculefishingZone.dart';


class organismsFishingZone extends StatefulWidget {
  const organismsFishingZone({super.key});

  @override
  State<organismsFishingZone> createState() => _organismsFishingZoneState();
}

class _organismsFishingZoneState extends State<organismsFishingZone> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          atomLogoRedAzul(
            heightImg: MediaQuery.of(context).size.height * 0.2,
          ),
          atomTitle(title: 'Cuéntanos de tu zona de pesca'),
          SizedBox(height: 30.0,),
          atomSubtitle(subtitle: '¿Dónde realizas tu actividad pesquera?'),
          SizedBox(height: 30.0,),
          moleculefishingZone(),
          SizedBox(height: 30.0,),
          atomSubtitle(subtitle: '¿Dónde queda el sitio en donde entregas o vendes tus productos?'),
          SizedBox(height: 15.0,),
          moleculeSelectsFishingZone(),
          SizedBox(height: 30.0,),
          atomButtonForm(text: 'Enviar', function: sendFunctions),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}


sendFunctions(context){
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return const CustomModal(
          title: 'Tu sitio de entrega o venta  habitual ha sido guardado con éxito',
          descripcion: '¿Deseas agregar otro sitio?',
          imagen: 'assets/infoAlert.png',
          textoboton1: 'Si',
          funcion1: noFunction,
          textoboton2: 'No',
          funcion2: alertmodalclose,
        ); // Usar el widget de la modal personalizada
      },
    );
}