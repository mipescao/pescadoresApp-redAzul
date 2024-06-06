import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:mipescao_desing_system/webComponents/alertModal.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomButton.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomInputs.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomSelect.dart';
import 'package:pescadoresapp_redazul/atomicDesign/atoms/atomText.dart';
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


  // variable para el nombre de la cedula del lado de enfrente
  final myControllerNameFileFront = TextEditingController();

  // variable para el nombre de la cedula del lado de atras
  final myControllerNameFileBack = TextEditingController();

  // Variable para la foto del usuario
  final myControllerNameUserPhoto = TextEditingController();

  // Información aunap
  final myControllerNumberCarnet = TextEditingController();
  final myControllerPhotoCarnet = TextEditingController();

  

  // 
  bool userCarnet = false;

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
          onPressed: (){
            modalSelectTypeFIle(1);
            // await _pickPDF(context);
          },
          child: atomInputsForm(
            textInput: 'Foto de la cedula  enfrente',
            controllerInput: myControllerNameFileFront,
            typeKey: TextInputType.none,
            maxLengthInput: 1,
            enabled: false,
            icon: Icon(
              Icons.add_a_photo_rounded,
              size: 24.0,
              color: colores.blue1,
            ),
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
          onPressed: (){
            modalSelectTypeFIle(2);
          },
          child: atomInputsForm(
            controllerInput: myControllerNameFileBack,
            textInput: 'Foto de la cedula atras',
            typeKey: TextInputType.none,
            maxLengthInput: 1,
            enabled: false,
            icon: Icon(
              Icons.add_a_photo_rounded,
              size: 24.0,
              color: colores.blue1,
            ),
          ),
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
          onPressed: (){
            
          },
          child: atomInputsForm(
            controllerInput: myControllerNameUserPhoto,
            textInput: 'Foto de tu rostro',
            typeKey: TextInputType.none,
            maxLengthInput: 1,
            enabled: false,
            icon: Icon(
              Icons.add_a_photo_rounded,
              size: 24.0,
              color: colores.blue1,
            ),
          ),
        ),
        sizedBoxAll.sizedBoxHeight,

        atomSubtitle(subtitle: "¿Tienes carnet de la AUNAP?", colorSubtitle: colores.blue1,),
        sizedBoxAll.sizedBoxHeight,
        Container(
          width:400.0,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.80,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    userCarnet = true;
                  });
                },
                child: Row(
                  children: [
                    atomText(text: "SI", colorText: colores.blue1, fontSize: scaledFontSize(22)),
                    SizedBox(width: 20.0),
                    Container(
                      // Personaliza el Checkbox usando un Container
                      width: 35.0,
                      height: 35.0,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.80,
                        maxHeight:MediaQuery.of(context).size.width * 0.80
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(5.0),
                        color: userCarnet
                            ? Color(0xff0095CD)
                            : Color(0xffffffff),
                        border: Border.all(
                            color: Color(0xffffffff)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: userCarnet
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
                  ],
                ),
              ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    userCarnet = false;
                  });
                },
                child: Row(
                  children: [
                    atomText(text: "NO", colorText: colores.blue1, fontSize: scaledFontSize(22),),
                    SizedBox(width: 20.0),
                    Container(
                      // Personaliza el Checkbox usando un Container
                      width: 35.0,
                      height: 35.0,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.80,
                        maxHeight:MediaQuery.of(context).size.width * 0.80
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(5.0),
                        color: userCarnet
                            ? Color(0xffffffff)
                            : Color(0xff0095CD),
                        border: Border.all(
                            color: Color(0xffffffff)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: userCarnet
                      ? Icon(
                          Icons.check_box_outline_blank,
                          size: 24.0,
                          color: Colors.transparent,
                        )
                      : Icon(
                          Icons.check,
                          size: 24.0,
                          color: Colors.white,
                        ),
                    ) 
                  ],
                ),
              )
            ],
          ),
        ),
        sizedBoxAll.sizedBoxHeight,
        userCarnet ?
        Column(
          children: [
            atomInputsForm(controllerInput: myControllerNumberCarnet, textInput: "Número de carnet AUNAP", typeKey: TextInputType.text),
            sizedBoxAll.sizedBoxHeight,
            atomInputsForm(
              controllerInput: myControllerPhotoCarnet,
              textInput: "Foto del carnet AUNAP",
              typeKey: TextInputType.none,
              maxLengthInput: 1,
              enabled: false,
              icon: Icon(
                Icons.add_a_photo_rounded,
                size: 24.0,
                color: colores.blue1,
              ),
            ),
            sizedBoxAll.sizedBoxHeight
          ],
        )
        : Container(height: 0.0,),

        atomButtonGrayForm(text: "Enviar", onPressed: (){
          infoSavedCorrectly();
        }),
        sizedBoxAll.sizedBoxHeight,
        sizedBoxAll.sizedBoxHeight
      ]
    );
  }
  
  // Funcion que se ejecuta cuando el usuario elige el tipo de documento.
  // Si el tipo de documento tiene el id 9 (9 = NIT) se mostraran los campos de numero de documento y DV (Digito de verificación)
  //Sino solo se mostrara el input de Numero de documento. 
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

  // Funcion que se ejecutara cuando clicken el input de 'Foto de la cedula'.
  // Abrira una modal que le dara al usuario la opción de subir una foto o escoger una del dispositivo.
  void modalSelectTypeFIle(numberPhoto) async{

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero, // Elimina los paddings internos
              insetPadding: EdgeInsets.zero, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              content: Center(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width:  MediaQuery.of(context).size.width,
                              height: 25.0,
                              color: Colors.transparent,
                            ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.90,
                                  padding: EdgeInsets.only(top: 30.0),
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width * 0.90,
                                    maxHeight: MediaQuery.of(context).size.height * 0.90
                                  ),
                                  decoration: BoxDecoration(
                                    color: colores.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    constraints: BoxConstraints(
                                      maxHeight: MediaQuery.of(context).size.height * 0.90
                                    ),
                                    // Todo  el contendio de la modal va dentro de este SingleChildScrollView.
                                    // Lo demas es la configuración del estilo
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          atomSubtitle(subtitle: 'Tomar foto o subir archivo'),
                                          sizedBoxAll.sizedBoxHeight,
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            width:  MediaQuery.of(context).size.width *0.70,
                                            decoration: BoxDecoration(
                                              color: colores.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  spreadRadius: 0,
                                                  blurRadius: 10,
                                                  offset: Offset(0, 5), // Desplazamiento hacia abajo
                                                ),
                                              ],  
                                              borderRadius: BorderRadius.circular(10.0)
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.camera_alt_rounded,
                                                  size: 48.0,
                                                  color: colores.gray1,
                                                ),
                                                SizedBox(height: 5.0,),
                                                atomSubtitle(subtitle: "Tomar foto", colorSubtitle: colores.gray1,),
                                              ],
                                            ),
                                          ),
                                          // sizedBoxAll.sizedBoxHeight,
                                          sizedBoxAll.sizedBoxHeight,
                                          GestureDetector(
                                            onTap: (){
                                              _pickImageGallery(numberPhoto);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              width:  MediaQuery.of(context).size.width *0.70,
                                              decoration: BoxDecoration(
                                                color: colores.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.5),
                                                    spreadRadius: 0,
                                                    blurRadius: 10,
                                                    offset: Offset(0, 5), // Desplazamiento hacia abajo
                                                  ),
                                                ],  
                                                borderRadius: BorderRadius.circular(10.0)
                                              ),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.camera_alt_rounded,
                                                    size: 48.0,
                                                    color: colores.gray1,
                                                    
                                                  ),
                                                  SizedBox(height: 5.0,),
                                                  atomSubtitle(subtitle: "Subir foto", colorSubtitle: colores.gray1,),
                                                ],
                                              ),
                                            ),
                                          ),
                                          sizedBoxAll.sizedBoxHeight3
                                        ],
                                      ),
                                    ),
                                    // Aqui termina el contenido de la modal :D
                                  )
                                )
                              ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.05,
                                  height: 100,
                                  color: Colors.transparent,
                                ),
                              ],
                            ),
                          ]
                        )
                      )
                    ),
                    Positioned(
                      top:0,
                      right: 0.0,
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: colores.white,
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            color: Colors.blue, // Color del borde
                            width: 2.0, // Ancho del borde
                          ),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Icon(Icons.close_rounded, color: Color(0xff0095CD),size: 28.0,),
                          ),
                        ),
                      ),
                    )
                  ]
                )
              )
            );
          }
        );
      }
    );

  }




  // Función para abrir el explorador de archivos y seleccionar una imagen
  Future<void> _pickImageGallery(numberPhoto) async {
    
    // Con esto se cierra la modal que pregunta si va a subir o a tomar la foto.
    Navigator.of(context).pop();
    
    // Variable en la que se guarda el documente pdf seleccionado
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg'],
    );

    
    if (result != null) {
      final bool response = true;
      setState(() {
        if (response == true) {
          if(numberPhoto == 1) {
            myControllerNameFileFront.text = result.files.single.name;
          }else{
            myControllerNameFileBack.text = result.files.single.name;
          }
          
          correctImage();
        } else {
          incorrectPdf();
        }
      });
    }
  }
  
  correctImage() {
    return showDialog(
        context: context,
        barrierDismissible:
            false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
        builder: (BuildContext context) {
          return BackButtonInterceptorShow(
            child: CustomModal(
              title: 'Cedular cargada correctamente',
              descripcion:
                  'Pulsa aceptar para continuar',
              imagen: 'assets/successAlert.png',
              textoboton1: '',
              funcion1: noFunction,
              textoboton2: 'Aceptar',
              funcion2: alertmodalclose,
            ),
          ); // Usar el widget de la modal personalizada
        },
      );

  }
  
  incorrectPdf() {
    return showDialog(
        context: context,
        barrierDismissible:
            false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
        builder: (BuildContext context) {
          return BackButtonInterceptorShow(
            child: CustomModal(
              title: 'Error inesperado',
              descripcion:
                  'Ocurrió un error inesperado al procesar su solicitud, por favor inténtelo de nuevo',
              imagen: 'assets/errorAlert.png',
              textoboton1: '',
              funcion1: noFunction,
              textoboton2: 'Aceptar',
              funcion2: alertmodalclose,
            ),
          ); // Usar el widget de la modal personalizada
        },
      );
  }
  
  // Esta función abre una modal que dice que la infomación se guardo correctamente.
  infoSavedCorrectly() {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModal(
            title: 'Terminos y condiciones aceptados correctamente',
            descripcion:
                'Dale aceptar para continuar',
            imagen: 'assets/successAlert.png',
            textoboton1: '',
            funcion1: noFunction,
            textoboton2: 'Aceptar',
            funcion2: goContactInfo,
          ),
        ); // Usar el widget de la modal personalizada
      },
    );
  }

  goContactInfo(context1){
    Navigator.pushNamed(context, '/infoContact');
  }
}