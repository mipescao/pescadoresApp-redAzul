import 'package:bloc/bloc.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageCreateAcount/cubit/cubit_state.dart';



class valueInputForm extends Cubit<FormNewPadroteState> {
  valueInputForm() : super(FormNewPadroteState(typeSpecie: InputState.pure(), nameSpecie: InputState.pure(), sellerOrCapture: InputState.pure(), nameSeller: InputState.pure(), nitSeller: InputState.pure(), dvSeller: InputState.pure(), playerId: InputState.pure(), typeCode: InputState.pure(), playerReceptionDate: InputState.pure()));

  void ontypeSpecieChanged(String value) {
    final typeSpecie = InputState.dirty(value);
    emit(state.copyWith(typeSpecie: typeSpecie));
    _updateButtonState();
  }

  void onnameSpecieChanged(String value) {
    final nameSpecie = InputState.dirty(value);
    emit(state.copyWith(nameSpecie: nameSpecie));
    _updateButtonState();
  }

  void onsellerOrCaptureChanged(String value) {
    final sellerOrCapture = InputState.dirty(value);
    emit(state.copyWith(sellerOrCapture: sellerOrCapture));
    _updateButtonState();
  }

  void onreceptionDateChanged(String value) {
    final receptionDate = InputState.dirty(value);
    emit(state.copyWith(receptionDate: receptionDate));
    _updateButtonState();
  }

  void onnameSellerChanged(String value) {
    final nameSeller = InputState.dirty(value);
    emit(state.copyWith(nameSeller: nameSeller));
    _updateButtonState();
  }

  void onnitSellerChanged(String value) {
    final nitSeller = InputState.dirty(value);
    emit(state.copyWith(nitSeller: nitSeller));
    _updateButtonState();
  }

  void ondvSellerChanged(String value) {
    final dvSeller = InputState.dirty(value);
    emit(state.copyWith(dvSeller: dvSeller));
    _updateButtonState();
  }

  void ontypeCodeChanged(String value) {
    final typeCode = InputState.dirty(value);
    emit(state.copyWith(typeCode: typeCode));
    _updateButtonState();
  }

  void onplayerIdChanged(String value) {
    final playerId = InputState.dirty(value);
    emit(state.copyWith(playerId: playerId));
    _updateButtonState();
  }

  void onplayerReceptionDateChanged(String value) {
    final playerReceptionDate = InputState.dirty(value);
    emit(state.copyWith(playerReceptionDate: playerReceptionDate));
    _updateButtonState();
  }

  void _updateButtonState() {
    emit(state.copyWith()); // Emitir un nuevo estado para forzar la actualización
  }

  submitForm() async{
    // final newPadrote = newPadroteAlevinera();
    // // ignore: unused_local_variable
    // final newPadrotePackage = await newPadrote.newPadrotePackage(typeSpecie: '${state.typeSpecie.value}', nameSpecie: '${state.nameSpecie.value}', sellerOrCapture: '${state.sellerOrCapture.value}', nameSeller: '${state.nameSeller.value}', nitSeller: '${state.nitSeller.value}', dvSeller: '${state.dvSeller.value}', typeCode: '${state.typeCode.value}', playerId: '${state.playerId.value}', playerReceptionDate: '${state.playerReceptionDate.value}');

    // print("print de submitForm ${newPadrotePackage}");

    // return newPadrotePackage;
  }

  // Agrega otros métodos según tus necesidades
}


