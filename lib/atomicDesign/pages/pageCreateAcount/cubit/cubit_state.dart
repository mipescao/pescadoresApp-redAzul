// Estados
import 'package:formz/formz.dart';

class FormNewPadroteState {
  final InputState typeSpecie;
  final InputState nameSpecie;
  final InputState sellerOrCapture;
  final InputState nameSeller;
  final InputState nitSeller;
  final InputState dvSeller;
  final InputState typeCode;
  final InputState playerId;
  final InputState playerReceptionDate;

  FormNewPadroteState({
    required this.typeSpecie,
    required this.nameSpecie,
    required this.sellerOrCapture,
    required this.nameSeller,
    required this.nitSeller,
    required this.dvSeller,
    required this.typeCode,
    required this.playerId,
    required this.playerReceptionDate,
    
  });

  FormNewPadroteState copyWith({
    InputState? typeSpecie,
    InputState? nameSpecie,
    InputState? sellerOrCapture,
    InputState? receptionDate,
    InputState? nameSeller,
    InputState? nitSeller,
    InputState? dvSeller,
    InputState? typeCode,
    InputState? playerId,
    InputState? playerReceptionDate,
    
  
    }) {
    return FormNewPadroteState(
      typeSpecie: typeSpecie ?? this.typeSpecie,
      nameSpecie: nameSpecie ?? this.nameSpecie,
      sellerOrCapture: sellerOrCapture ?? this.sellerOrCapture,
      nameSeller: nameSeller ?? this.nameSeller,
      nitSeller: nitSeller ?? this.nitSeller,
      dvSeller: dvSeller ?? this.dvSeller,
      typeCode: typeCode ?? this.typeCode,
      playerId: playerId ?? this.playerId,
      playerReceptionDate: playerReceptionDate ?? this.playerReceptionDate,
    );
  }

  // Método para determinar si todos los campos están llenos
  bool get allInputsComplete => this.typeSpecie.value.isNotEmpty && nameSpecie.value.isNotEmpty && this.sellerOrCapture.value.isNotEmpty && this.nameSeller.value.isNotEmpty && this.nitSeller.value.isNotEmpty && this.dvSeller.value.isNotEmpty && this.typeCode.value.isNotEmpty && this.playerId.value.isNotEmpty && this.playerReceptionDate.value.isNotEmpty;
    // typeSpecie.value.isNotEmpty && nameSpecie.value.isNotEmpty && this.sellerOrCapture.value.isNotEmpty && this.receptionDate.value.isNotEmpty && nameSeller.value.isNotEmpty && this.nitSeller.value.isNotEmpty && this.dvSeller.value.isNotEmpty && this.typeCode.value.isNotEmpty && this.playerId.value.isNotEmpty && this.playerReceptionDate.value.isNotEmpty;
}


// Estado
class InputState extends FormzInput<String, String> {
  const InputState.pure() : super.pure('');
  const InputState.dirty([String value = '']) : super.dirty(value);

  @override
  String? validator(String value) {
    print(value.isNotEmpty);
    return value.isNotEmpty  ? null : 'Este campo es obligatorio';
  }
}


