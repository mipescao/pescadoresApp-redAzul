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
    return  Container(
  width: 400.0,
  padding: EdgeInsets.zero,
  constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
  decoration: BoxDecoration(
    color: Color(0xffffffff),
    borderRadius: BorderRadius.circular(20.0),
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
            value: item,
            child: Container(
              padding: EdgeInsets.zero, // Elimina cualquier relleno interno adicional
              child: Container(
                height: 100.0, // Ajusta la altura según sea necesario
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.zero, // Elimina cualquier relleno interno adicional
                      width: 100.0, // Ajusta el ancho según sea necesario
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 8.0), // Ajusta el espacio entre los elementos
                    Container(
                      padding: EdgeInsets.zero, // Elimina cualquier relleno interno adicional
                      width: 100.0, // Ajusta el ancho según sea necesario
                      child: Center(
                        child: Text(
                          item.text,
                          style: TextStyle(color: Colors.blue, fontSize: 20.0),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ],
                ),
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
        hint: Center(
          child: Text(
            _selectedItem,
            style: TextStyle(color: Colors.blue, fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  ),
);
  }
}