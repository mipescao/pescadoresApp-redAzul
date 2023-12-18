import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pescadores/styles/globalStyles.dart';

bool imageSelected = false;
String nameFile = "";
class atomInputImage extends StatefulWidget {

  final String nameVariable;
  final void Function(XFile?)? onChanged;
  const atomInputImage({super.key, required this.onChanged, required this.nameVariable});

  @override
  _atomInputImageState createState() => _atomInputImageState();
}

class _atomInputImageState extends State<atomInputImage> {

  @override
  Widget build(BuildContext context) {

    File? _image;

    final picker = ImagePicker();
    Future _pickImage() async {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery,);

      if (pickedFile != null) {
        setState(() {
          imageSelected = true;
          widget.onChanged!(pickedFile);
          _image = File(pickedFile.path);
          nameFile = _image!.uri.pathSegments.last;
          print(imageSelected);
        });
      }
    }
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mostrar la imagen seleccionada (si existe)
            // if (_image != null) Image.file(_image!),

            // Botón para cargar la imagen
            InkWell(
              onTap: _pickImage,
              child: Container(
                padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
                width: 400.0,
                height: scaledFontSize(47.0),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        color: Colors.transparent,
                        size: 24.0,
                      ),
                      Text(
                        imageSelected ? nameFile : widget.nameVariable,
                        style:
                            imageSelected ? TextStyle(color:  Color(0xff0095CD), fontSize: scaledFontSize(20.0)) : TextStyle(color:  Color(0xff0095CD).withOpacity(0.4), fontSize: scaledFontSize(20.0)),
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
            ),
          ],
        ),
    );
  }
}