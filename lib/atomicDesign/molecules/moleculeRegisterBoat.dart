import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadores/atomicDesign/atoms/atomSelectsImage.dart';
import 'package:pescadores/atomicDesign/atoms/atomTitle.dart';
import 'package:pescadores/styles/styles.dart';

final myControllerNameBoat = TextEditingController();

String typeBoatSelected = 'Soledad';
final List<String> typeBoats = [
  'Soledad',
  'Lasflores',
  'Puerto mocho',
];

int valueEslora = 0;

class moleculeRegisterBoat extends StatefulWidget {
  const moleculeRegisterBoat({super.key});

  @override
  State<moleculeRegisterBoat> createState() => _moleculeRegisterBoatState();
}

class _moleculeRegisterBoatState extends State<moleculeRegisterBoat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        atomTitle(title: 'Registra tu embarcación'),
        SizedBox(height: 30.0),
        atomInputForm(controllerInput: myControllerNameBoat, textInput: 'Nombre de la embarcación', icon: Icon(Icons.password, color: Colors.transparent)),
        SizedBox(height: 30.0),
        CustomDropdown(), // select que aun no funciona
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Eslora:', style: TextStyle(color: Color(0xff0095CD), fontSize: 22.0, fontFamily: "nunitoRegular"),),
            SizedBox(width: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20.0), // Agrega el border-radius deseado
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                ],
              ),
              width: 200,
              height: 45.0,
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.30),  
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.remove,
                      color:
                          Color(0xff0071BC), // Cambiar el color de la flecha a azul
                    ),
                    onPressed: (){
                      setState(() {
                        if(valueEslora >1){
                          valueEslora = valueEslora - 1;
                        }
                      });
                    },
                  ),
                  Text(valueEslora.toString(), style: TextStyle(color: Color(0xff0095CD), fontSize: 22.0, fontFamily: "nunitoRegular"),textAlign: TextAlign.center,),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      color:
                          Color(0xff0071BC), // Cambiar el color de la flecha a azul
                    ),
                    onPressed: (){
                      setState(() {
                        valueEslora = valueEslora + 1;
                      });
                    },
                  ),
                ],
              ),
            
            ),
            SizedBox(width: 20.0),
            Text('metros', style: TextStyle(color: Color(0xff0095CD), fontSize: 22.0, fontFamily: "nunitoRegular"),)
          ],
        )
        
      ],
    );
  }
}

// Esta matriculado?

class moleculeBoatMatriculed extends StatefulWidget {
  const moleculeBoatMatriculed({super.key});

  @override
  State<moleculeBoatMatriculed> createState() => _moleculeBoatMatriculedState();
}

class _moleculeBoatMatriculedState extends State<moleculeBoatMatriculed> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
              width: 400.0,
              decoration: styleSections.containerBlue,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
              child: Text("Hola mundo"),  
            ),
            Container(
              width: 400.0,
              decoration: styleSections.containerBorderBlue,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
              
              child: Text("Hola Mundo"),
            )
          ],
        ),
      );
  }
}