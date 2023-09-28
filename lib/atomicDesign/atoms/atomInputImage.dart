import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class atomInputImage extends StatefulWidget {
  // final String text;
  // final String nameVariable;
  const atomInputImage({super.key});

  @override
  State<atomInputImage> createState() => _atomInputImageState();
}

class _atomInputImageState extends State<atomInputImage> {
  File? imagen;

  final picker = ImagePicker();

  Future selImagen() async {
    // variable para la imagen seleccionada
    var pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        imagen = File(pickedFile.path);
      } else {
        print("object");
      }
    });

    // Guardar la imagen en una carpeta
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      // height: 45.0,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.95),
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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffffffff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
        ),
        child: GestureDetector(
          onTap: selImagen,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        color: Colors.transparent,
                        size: 24.0,
                      ),
                      Text(
                        'Foto de la cédula',
                        style:
                            TextStyle(color: Color(0xff0095CD), fontSize: 22.0),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.add_a_photo,
                        color: Color(0xff0071BC),
                        size: 24.0,
                      ),
                    ],
                  ),
                ),

                // funcionalidades de la imagen
                Container(
                    child: imagen == null ? Center() : Image.file(imagen!))
              ],
            ),
          ),
        ),

        // Fucnion que ejecutara el cargar la imagen
        onPressed: () {},
      ),
    );
  }
}
