import 'package:flutter/material.dart';
import 'package:pescadores/atomicDesign/atoms/atomButtonSend.dart';
import 'package:pescadores/atomicDesign/atoms/atomOptionsCheckbox.dart';
import 'package:pescadores/atomicDesign/pages/pagesFishingActivity.dart';

final jsonFishingArts = {};

final arrayfishingArts = ['Red de enmalle', 'Trasmallo', 'Ruche', 'Redes langosteras', 'Redes camaroneras y langostineras', 'Atarraya', 'Chinchorro', 'Chinchorra', 'Cóngolo', 'Palangre', 'Calandria o línea de anzuelos', 'Nasa'];

bool prueba = true;

class moleculeOptionsFishingArts extends StatefulWidget {
  const moleculeOptionsFishingArts({super.key});

  @override
  State<moleculeOptionsFishingArts> createState() => _moleculeOptionsFishingArtsState();
}

class _moleculeOptionsFishingArtsState extends State<moleculeOptionsFishingArts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.90),
                      child: 
                      Column(
                        children: arrayfishingArts.map((e){
                          return atomOptionsCheckbox(
                                  text: e,
                                    onChanged: (value){
                                      setState(() {
                                        print(value);
                                        jsonFishingArts[e] = value;
                                      });
                                    }
                                  );
                                
                              }).toList(),
                      ),
                    )),
              ),
              SizedBox(height: 30.0,),  
              atomButtonForm(text: 'Enviar', function: sendFishingArts),
            ],
          ),
    );
  }
}


sendFishingArts(context){
  print(jsonFishingArts);
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageFishingActivity()),
  );
}