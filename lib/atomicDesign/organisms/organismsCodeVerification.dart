import 'package:flutter/material.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomLogoRedAzul.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/atomicDesign/pages/pagePersonalDates.dart';

// varibale del codigo de verificación
final String codeEmail = 'A1A1A1A1';

// controlador del input
final myControllerCodeVerification = TextEditingController();

class organismscodeVerification extends StatefulWidget {
  const organismscodeVerification({super.key});

  @override
  State<organismscodeVerification> createState() =>
      _organismscodeVerificationState();
}

class _organismscodeVerificationState extends State<organismscodeVerification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30.0),
          atomLogoRedAzul(heightImg: MediaQuery.of(context).size.height * 0.2),
          atomTitle(
              title:
                  "Hemos enviado un código de verificación a tu correo electrónico. Por favor ingrésalo"),
          SizedBox(height: 80.0),
          atomInputFormPassword(
              controllerInput: myControllerCodeVerification,
              textInput: "Código de verificación*",
              icon: Icon(Icons.password, color: Color(0xff0071BC))),
          SizedBox(height: 80.0),
          atomButtonForm(
            text: "Verificar",
            function: verifyCode,
          ),
        ],
      ),
    );
  }
}

verifyCode(context) {
  final inputcode = myControllerCodeVerification.text;

  if (inputcode == codeEmail) {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return const CustomModal(
          title: 'Tu correo ha sido verificado con éxito',
          descripcion: 'Puedes agregar una embarcación para continuar.',
          imagen: 'assets/successAlert.png',
          textoboton1: '',
          funcion1: noFunction,
          textoboton2: 'Aceptar',
          funcion2: renderPersonalDates1,
        ); // Usar el widget de la modal personalizada
      },
    );
  } else {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return const CustomModal(
          title: 'Codigo incorrecto',
          descripcion:
              'Verifica que el codigo que ingresaste sea el correcto y intentalo nuevamente',
          imagen: 'assets/errorAlert.png',
          textoboton1: '',
          funcion1: noFunction,
          textoboton2: 'Aceptar',
          funcion2: alertmodalclose,
        ); // Usar el widget de la modal personalizada
      },
    );
  }
}

renderPersonalDates1(context) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pagePersonalDates()),
  );
}
