import 'package:flutter/material.dart';
import 'package:pescadores/styles/styles.dart';

// Esta matriculado?
bool storageNo = false;
bool storageSi = true;

class moleculeBoatStorage extends StatefulWidget {
  const moleculeBoatStorage({super.key});

  @override
  State<moleculeBoatStorage> createState() => _moleculeBoatStorageState();
}

class _moleculeBoatStorageState extends State<moleculeBoatStorage> {
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('¿Almacena en frío?',
                        style: styleTextSections.textWhite),
                    Row(children: [
                      Text('Si', style: styleTextSections.textWhite),
                      SizedBox(width: 10.0),
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: storageSi
                                ? Color(0xfffbb03b)
                                : Color(0xff0095cd),
                            border: Border.all(color: Color(0xffffffff))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (storageSi == true) {
                                  storageNo = true;
                                  storageSi = false;
                                } else {
                                  storageNo = false;
                                  storageSi = true;
                                }
                              });
                            },
                            child: storageSi
                                ? Icon(
                                    Icons.check,
                                    size: 24.0,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.check_box_outline_blank,
                                    size: 24.0,
                                    color: Colors.transparent,
                                  ),
                          ),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Text('No', style: styleTextSections.textWhite),
                      SizedBox(width: 10.0),
                      Container(
                        // Personaliza el Checkbox usando un Container
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: storageNo
                                ? Color(0xfffbb03b)
                                : Color(0xff0095cd),
                            border: Border.all(color: Color(0xffffffff))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              // Cambia el estado del Checkbox al hacer clic
                              setState(() {
                                if (storageNo == true) {
                                  storageSi = true;
                                  storageNo = false;
                                } else {
                                  storageSi = false;
                                  storageNo = true;
                                }
                              });
                            },
                            child: storageNo
                                ? Icon(
                                    Icons.check,
                                    size: 24.0,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.check_box_outline_blank,
                                    size: 24.0,
                                    color: Colors.transparent,
                                  ),
                          ),
                        ),
                      ),
                    ])
                  ]),
            ),
          ),
          Container(
            width: 400.0,
            decoration: styleSections.containerBorderBlue,
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
            child: storageSi ? siStorage() : noStorage(),
          )
        ],
      ),
    );
  }
}

int valueStorage = 0;

class siStorage extends StatefulWidget {
  const siStorage({super.key});

  @override
  State<siStorage> createState() => _siStorageState();
}

class _siStorageState extends State<siStorage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.50,
              child: Text('¿Qué capacidad de almacenamiento tiene?',
                  style: TextStyle( fontSize: 20.0, color: colores.blue1, fontFamily: "NunitoBold",)
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(
                      20.0), // Agrega el border-radius deseado
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
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Color(
                            0xff0071BC), // Cambiar el color de la flecha a azul
                      ),
                      onPressed: () {
                        setState(() {
                          if (valueStorage > 1) {
                            valueStorage = valueStorage - 1;
                          }
                        });
                      },
                    ),
                    Text(
                      valueStorage.toString(),
                      style: TextStyle(
                          color: Color(0xff0095CD),
                          fontSize: 22.0,
                          fontFamily: "nunitoRegular"),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Color(
                            0xff0071BC), // Cambiar el color de la flecha a azul
                      ),
                      onPressed: () {
                        setState(() {
                          valueStorage = valueStorage + 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              Text("KILOS", style: styleTextSections.textBlue,)
            ],
          )
        ],
      ),
    );
  }
}


class noStorage extends StatefulWidget {
  const noStorage({super.key});

  @override
  State<noStorage> createState() => _noStorageState();
}

class _noStorageState extends State<noStorage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}