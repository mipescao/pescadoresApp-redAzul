import 'package:flutter/material.dart';

int selectedDay = DateTime.now().day;
String selectedDocument = 'Cedula de ciudadania';
int selectedYear = DateTime.now().year;

class atomSelectsDocument extends StatefulWidget {
  const atomSelectsDocument({super.key});

  @override
  State<atomSelectsDocument> createState() => _atomSelectsDocumentState();
}

class _atomSelectsDocumentState extends State<atomSelectsDocument> {
  final List<int> days = List.generate(31, (index) => index + 1);
  final List<String> documents = [
    'Cedula de ciudadania',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre'
  ];
  final List<int> years =
      List.generate(100, (index) => DateTime.now().year - index);

  String selectedValue = 'Opción 1';

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 40.0,
                    width: 400.0,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.90),
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
                    child: Align(
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, left:0, right: 5, bottom: 0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedDocument ,
                            onChanged: (String? newValue) {
                                setState(() {
                                  selectedDocument = newValue!;
                                });
                              },
                              
                              items: documents.map((String month) {
                                return DropdownMenuItem<String>(
                                  value: month,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width * 0.80,
                                     color: Colors.transparent, // Color de fondo transparente
                                      padding: EdgeInsets.only(left: 24.0), 
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
                  );
  }
}



// Container(
//       height: 40.0,
//       width: 400.0,
//       constraints:
//           BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.95),
//       decoration: BoxDecoration(
//         color: Color(0xffffffff),
//         borderRadius:
//             BorderRadius.circular(20.0), // Agrega el border-radius deseado
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Align(
//         child: Padding(
//           padding: EdgeInsets.only(top: 0, left: 0, right: 5, bottom: 0),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<String>(
//               value: selectedDocument,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedDocument = newValue!;
//                 });
//               },
//               alignment: Alignment.center,
//               items: documents.map((String month) {
//                 return DropdownMenuItem<String>(
//                   value: month,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.80,
//                     // constraints: BoxConstraints(
//                     //     maxWidth: MediaQuery.of(context).size.width * 0.25),
//                     color: Colors.transparent, // Color de fondo transparente
//                     padding: EdgeInsets.only(left: 24.0),

//                     child: Text(
//                       month,
//                       textAlign: TextAlign.center,
//                       style:
//                           TextStyle(color: Color(0xff0095CD), fontSize: 18.0),
//                       overflow: TextOverflow
//                           .ellipsis, // Corta el texto si es demasiado largo
//                       maxLines: 1,
//                     ),
//                   ),
//                 );
//               }).toList(),
//               icon: Icon(
//                 Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
//                 color:
//                     Color(0xff0071BC), // Cambiar el color de la flecha a azul
//               ),
//             ),
//           ),
//         ),
//       ),
//     );