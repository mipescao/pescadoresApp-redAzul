import 'package:flutter/material.dart';
import 'package:dropdown_below/dropdown_below.dart';




class atomSelects<String> extends StatelessWidget {
  final List<String> items;
  final void Function(String?) onChanged;
  final String? selectedItem;

  atomSelects({
    required this.items,
    required this.onChanged,
    this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40.0,
      width: 400.0,
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
          Align(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedItem,
                onChanged: onChanged,
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(

                    value: value,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      child: Row(
                        children: <Widget>[
                          // if(selectedItem != value)
                            Image.asset(
                              'assets/images/logo-RedAzul.png',
                              width: 100.0,
                            ),
                        
                          Text(value.toString(),
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Color(0xff0095CD), fontSize: 18.0),
                            overflow: TextOverflow
                                .ellipsis, // Corta el texto si es demasiado largo
                              maxLines: 1,),
                        

                          // }else{

                          // }
                    
                          
                        ],
                      ),
                    ),
                  );
                }).toList(),
                icon: Icon(
                      Icons.arrow_drop_down_rounded, // Icono de flecha predeterminado
                      color:
                          Color(0xff0071BC), // Cambiar el color de la flecha a azul
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}