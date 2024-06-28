// import 'authentication_repository.dart';

import 'authentication_repository.dart';

// import 'authentication_repository.dart';

void main() async {
  try {
    await AuthenticationRepository().signUp(email: 'camilovalenciapadilla@gmail.com', password: 'camilosemilo1');
  } catch (e) {
    print(e);
  }
}

