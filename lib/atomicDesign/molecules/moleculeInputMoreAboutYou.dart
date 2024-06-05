import 'package:flutter/material.dart';

import 'package:file_picker/file_picker.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';

class moleculeInputMoreAboutYou extends StatefulWidget {
  const moleculeInputMoreAboutYou({super.key});

  @override
  State<moleculeInputMoreAboutYou> createState() => _moleculeInputMoreAboutYouState();
}

class _moleculeInputMoreAboutYouState extends State<moleculeInputMoreAboutYou> {
  
  final myControllerFirstName = TextEditingController();
  final myControllerSecondName = TextEditingController();
  final myControllerLastName = TextEditingController();
  final myControllerNickName = TextEditingController();
  final myControllernumberDocument = TextEditingController();
  // Se usara en caso de que el usuario tenga nit
  final myControllerDv  = TextEditingController();

  // selects
  String myControllerTypeDocument = "";

  // lista del select
  List<basicSelect> listDocuments = <basicSelect>[basicSelect(value: 9, label: 'NIT'), basicSelect(value: 1, label: 'Pasaporte'), basicSelect(value: 3, label: 'Cedula de ciudadania') ];

  // Widget para el tipo de documento
  Widget inputTypeDocument = Container(height: 0.0,); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        atomInputsForm(controllerInput:  myControllerFirstName, textInput: 'Primer nombre', typeKey: TextInputType.text),
        sizedBoxAll.sizedBoxHeight,
        atomInputsForm(controllerInput: myControllerSecondName, textInput: 'Segundo nombre', typeKey: TextInputType.text, textRequired: "",),
        sizedBoxAll.sizedBoxHeight,
        atomInputsForm(controllerInput: myControllerLastName, textInput: 'Apellidos', typeKey: TextInputType.text),
        sizedBoxAll.sizedBoxHeight,
        atomInputsForm(controllerInput: myControllerNickName, textInput: 'Sobrenombre', typeKey: TextInputType.text, textRequired: "",),
        sizedBoxAll.sizedBoxHeight,
        atomSelect(
          itemsSelect: listDocuments,
          nameSelect: "Tipo de documento",
          onChanged: (value){
            setState(() {
              print(value);
              myControllerTypeDocument = value.toString();
              typeDocumentSelected(myControllerTypeDocument);
            });
          },
        ),
        sizedBoxAll.sizedBoxHeight,
        inputTypeDocument,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Default background color
            foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Default foreground color
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent), // Default overlay color
            elevation: MaterialStateProperty.all<double>(0.0), // Default elevation
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(borderRadius: BorderRadius.zero), // Default border shape
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero), 
          ), 
          onPressed: ()async{
            await _pickPDF(context);
          },
          child: atomInputsForm(
            textInput: 'Foto de la cedula  enfrente',
            typeKey: TextInputType.none,
            maxLengthInput: 1,
            enabled: false,
          )
        ),
        sizedBoxAll.sizedBoxHeight,
                ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Default background color
            foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Default foreground color
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent), // Default overlay color
            elevation: MaterialStateProperty.all<double>(0.0), // Default elevation
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(borderRadius: BorderRadius.zero), // Default border shape
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero), 
          ), 
          onPressed: ()async{
            await _pickPDF(context);
          },
          child: atomInputsForm(
            textInput: 'Foto de la cedula atras',
            typeKey: TextInputType.none,
            maxLengthInput: 1,
            enabled: false,
          )
        )
      ],
    );
  }
  
  void typeDocumentSelected(String value) {
    if(value == '9'){
      setState(() {
      
        inputTypeDocument = Center(
          child: Container(
            
            width: MediaQuery.of(context).size.width * 0.90,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    atomInputsForm(textInput: "N° de documento", typeKey: TextInputType.number, widthInput: MediaQuery.of(context).size.width * 0.65,),
                    atomInputsForm(textInput: "DV", viewIcons: false, maxLengthInput: 1, textRequired: "Obl.", typeKey: TextInputType.number, widthInput: MediaQuery.of(context).size.width * 0.20,),
                  ],
                ),
                sizedBoxAll.sizedBoxHeight
              ],
            ),
          ),
        );

      });
    }else{
      setState(() {
      
        inputTypeDocument = Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.90,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    atomInputsForm(textInput: "Numero de documento", typeKey: TextInputType.number,),
                    
                  ],
                ),
                sizedBoxAll.sizedBoxHeight
              ],
            ),
          ),
        );
        
      });
    }
  }

  // Función para abrir el explorador de archivos y seleccionar un PDF
  Future<void> _pickPDF(context) async {
    // Variable en la que se guarda el documente pdf seleccionado
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg'],
    );


    if (result != null) {
      final bool response = true;
      setState(() {
        if (response == true) {
          // nameFile = result.files.single.name;
          // correctPdf(context);
        } else {
          // incorrectPdf(context);
        }
      });
    }
  }
}