import 'package:flutter/material.dart';
import 'package:pescadores/styles/styles.dart';

// clase para las opciones (nombre e imagen)
class DropdownItem {
  final String text;
  final String imagePath;

  DropdownItem({required this.text, required this.imagePath});
}

// final itemSelected = 'Bote de fibra de vidrio';

// Lista de opciones en el select  (imagen y nombre)
final List<DropdownItem> items = [
    DropdownItem(text: 'Bote de fibra de vidrio', imagePath: 'assets/archivos/embarcaciones/boteFibraVidrio.png'),
    DropdownItem(text: 'Bote de madera', imagePath: 'assets/archivos/embarcaciones/boteMadera.png'),
    DropdownItem(text: 'Canoa', imagePath: 'assets/archivos/embarcaciones/canoa.png'),
    DropdownItem(text: 'Canoa', imagePath: 'assets/archivos/embarcaciones/canoa.png'),
    DropdownItem(text: 'Canoa', imagePath: 'assets/archivos/embarcaciones/canoa.png'),
    DropdownItem(text: 'Canoa', imagePath: 'assets/archivos/embarcaciones/canoa.png'),
    DropdownItem(text: 'Canoa', imagePath: 'assets/archivos/embarcaciones/canoa.png'),
];

// widget para hacer el select
class atomSelectImageBoat extends StatefulWidget {
  const atomSelectImageBoat({super.key});

  @override
  State<atomSelectImageBoat> createState() => _atomSelectImageBoatState();
}

class _atomSelectImageBoatState extends State<atomSelectImageBoat> {
  String _selectedItem = 'Select una embarcación';
  @override
  Widget build(BuildContext context) {
    return Container(
      
      // height: 40.0,
      width: 400.0,
      padding: EdgeInsets.zero,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius:
            BorderRadius.circular(20.0), // Agrega el border-radius deseado
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          DropdownButton<DropdownItem>(
          items: items.map((DropdownItem item) {
            return DropdownMenuItem<DropdownItem>(
              value: item ,
              child: Container(

                width: 400.0,
                height: 10000.0,
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.80),
                // decoration: BoxDecoration(
                //   border: Border(
                //     bottom: BorderSide(
                //       color: Colors.black,
                //       width: 2.0,                ),
                //   ),
                // ),

                child: Row(
                  mainAxisSize: MainAxisSize.max, // Asegura que el contenido ocupe todo el ancho
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 4000000.0,
                      // height:1000,
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Container(
                       width: MediaQuery.of(context).size.width * 0.38,
                      child: Center(child: Text(item.text, style: TextStyle(color: colores.blue1, fontSize: 20.0), textAlign: TextAlign.center,))
                    ),
                    
                  ],
                  
                ),
              ),
            );
          }).toList(),
          onChanged: (DropdownItem? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedItem = newValue.text;
              });
              print('Selected item: ${newValue.text}');
            }
          },  
          hint: Text(_selectedItem),
          ),
        ],
      ),
    );
  }
}