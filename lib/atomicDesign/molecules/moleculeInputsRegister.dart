import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomText.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadores/atomicDesign/pages/pageCodeVerification.dart';

class moleculeInputsRegister extends StatefulWidget {
  const moleculeInputsRegister({super.key});

  @override
  State<moleculeInputsRegister> createState() => _moleculeInputsRegisterState();
}

final myControllerCorreoRegister = TextEditingController();
final myControllerPasswRegister1 = TextEditingController();
final myControllerPasswRegister2 = TextEditingController();

class _moleculeInputsRegisterState extends State<moleculeInputsRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        atomInputForm(
            controllerInput: myControllerCorreoRegister,
            textInput: "Correo electronico*",
            icon: Icon(Icons.mail, color: Color(0xff0071BC))),
        SizedBox(height: 32),
        atomInputFormPassword(
            controllerInput: myControllerPasswRegister1,
            textInput: "Contraseña*",
            icon: Icon(Icons.password, color: Color(0xff0071BC))),
        SizedBox(height: 32),
        atomInputFormPassword(
            controllerInput: myControllerPasswRegister2,
            textInput: "Confirmar contraseña*",
            icon: Icon(Icons.password, color: Color(0xff0071BC))),
        SizedBox(height: 10.0),
        atomText(
            text:
                "Usa 8 o más caracteres con una combinación de letras, números y símbolos")
      ],
    ));
  }
}

sendForm(context) {
  // if()
  final email = myControllerCorreoRegister.text;
  final password = myControllerPasswRegister1.text;
  final confirmPassword = myControllerPasswRegister2.text;
  print(email);
  print(password.length);
  print(confirmPassword);

  if (_isEmailValid(email) == false) {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return const CustomModal(
          title: 'Email incorrecto',
          descripcion: 'Por favor ingresa un Email valido.',
          imagen: 'assets/errorAlert.png',
          textoboton1: '',
          funcion1: noFunction,
          textoboton2: 'Aceptar',
          funcion2: alertmodalclose,
        ); // Usar el widget de la modal personalizada
      },
    );
  } else if (password.length <= 8) {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return const CustomModal(
          title: 'Contraseña invalida',
          descripcion:
              'Usa 8 o más caracteres con una combinación de letras, números y símbolos',
          imagen: 'assets/errorAlert.png',
          textoboton1: '',
          funcion1: noFunction,
          textoboton2: 'Aceptar',
          funcion2: alertmodalclose,
        ); // Usar el widget de la modal personalizada
      },
    );
  } else if (password != confirmPassword) {
    return showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return const CustomModal(
          title: 'Las contraseñas no coinciden',
          descripcion: 'Revisa las contraseñasqe ingresaste',
          imagen: 'assets/errorAlert.png',
          textoboton1: '',
          funcion1: noFunction,
          textoboton2: 'Aceptar',
          funcion2: alertmodalclose,
        ); // Usar el widget de la modal personalizada
      },
    );
  } else {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pageCodeVerification()),
    );
  }
}

_isEmailValid(String email) {
  // Expresión regular para validar un correo electrónico.
  final RegExp emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  return emailRegExp.hasMatch(email);
  // print(emailRegExp.hasMatch(email));
}
