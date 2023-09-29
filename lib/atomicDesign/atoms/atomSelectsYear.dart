import 'package:flutter/material.dart';

  int selectedDay = DateTime.now().day;
  String selectedMonth = 'Enero';
  int selectedYear = DateTime.now().year;

class atomSelectsYear extends StatefulWidget {
  const atomSelectsYear({super.key});

  @override
  State<atomSelectsYear> createState() => _atomSelectsYearState();
}

class _atomSelectsYearState extends State<atomSelectsYear> {



  final List<int> days = List.generate(31, (index) => index + 1); 
  final List<String> months = [
    'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto',
    'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
  ];
  final List<int> years = List.generate(100, (index) => DateTime.now().year - index);


  String selectedValue = 'Opción 1';


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.90),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Fecha de nacimiento:",
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xff0095CD), fontSize: 22, fontFamily: "NunitoBold", fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 5),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Año
                  Container(
                    height: 40.0,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.40),
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 0, left:5, right: 5, bottom: 0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: selectedYear,
                          onChanged: (int? newValue) {
                              setState(() {
                                selectedYear = newValue!;
                              });
                            },
                            items: years.map((int year) {
                              return DropdownMenuItem<int>(
                                value: year,
                                child: Container(
                                   color: Colors.transparent, // Color de fondo transparente
                                    padding: EdgeInsets.symmetric(horizontal: 16.0), // Espacio horizontal entre elementos
                                    child: Text('$year', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff0095CD), fontSize: 18.0),), 
                                  ),
                              );
                            }).toList(),
                            icon: Icon(
                              Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
                              color: Color(0xff0071BC), // Cambiar el color de la flecha a azul
                            ),
                        ),
                      ),
                    ),
                  ),

                  // mes
                  Container(
                    height: 40.0,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.40),
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 0, left:0, right: 5, bottom: 0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedMonth ,
                          onChanged: (String? newValue) {
                              setState(() {
                                selectedMonth = newValue!;
                              });
                            },
                            items: months.map((String month) {
                              return DropdownMenuItem<String>(
                                value: month,
                                child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 0.25),
                                   color: Colors.transparent, // Color de fondo transparente
                                    padding: EdgeInsets.symmetric(horizontal: 16.0), // Espacio horizontal entre elementos
                                    child: Text(month, textAlign: TextAlign.center, style: TextStyle(color: Color(0xff0095CD), fontSize: 18.0),overflow: TextOverflow.ellipsis, // Corta el texto si es demasiado largo
                                    maxLines: 1,), 
                                  ),
                              );
                            }).toList(),
                            icon: Icon(
                              Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
                              color: Color(0xff0071BC), // Cambiar el color de la flecha a azul
                            ),
                        ),
                      ),
                    ),
                  ),

                  // Dia
                  Container(
                    width: 100.0,
                    height: 40.0,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.25),
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 0, left:5, right: 5, bottom: 0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: selectedDay,
                          onChanged: (int? newValue) {
                              setState(() {
                                selectedDay = newValue!;
                              });
                            },
                            items: days.map((int day) {
                              return DropdownMenuItem<int>(
                                value: day,
                                child: Container(
                                                                  constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 0.5),
                                   color: Colors.transparent, // Color de fondo transparente
                                    padding: EdgeInsets.symmetric(horizontal: 16.0), // Espacio horizontal entre elementos
                                    child: Text('$day', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff0095CD), fontSize: 16.0),), 
                                  ),
                              );
                            }).toList(),
                            icon: Icon(
                              Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
                              color: Color(0xff0071BC), // Cambiar el color de la flecha a azul
                            ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
    );
  }
}