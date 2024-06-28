// paquetes
import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';


// Metodos? o clases 
part 'authentication_event.dart';
part 'authentication_state.dart';

// Definicion de la clase
// final UserRepository ste = await ;
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  // parametros de la clase
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(authenticationRepository.currentUser.isNotEmpty ? AuthenticationState.authenticated(authenticationRepository.currentUser) : const AuthenticationState.unauthenticated()) {
    // Se ponen a disposicion las funciones para los diferentes eventos de entrada
    on<_AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    on<AuthenticationgoToHome>(_onAuthenticationGotoHome);
    // Se define la funcion que estara escuchando los cambios en la autenticacion
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(_AuthenticationStatusChanged(status)),
    );
  }

// Instancia
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
// Escucha de cambio de estados
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

// Se cancela el modo de escucha de cambios de la autenticacion
  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

// Escucha los estados de la autenticacion del usuario
  Future<void> _onAuthenticationStatusChanged(
    _AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    print('---------event.status-------');
    print(event.status);
    print(event.status);
    print('---------event.status-------');
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        print('authenticated-case');
        final user = await _tryGetUser();
        print(user);
        return emit(
          user.isNotEmpty
              ? AuthenticationState.authenticated(user)
              : const AuthenticationState.unauthenticated(),
        );
      case AuthenticationStatus.gotostart:
        return emit(const AuthenticationState.gotostart());
    }
  }

// Cierra la seccion
  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.logOut();
  }

  void _onAuthenticationGotoHome(
    AuthenticationgoToHome event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.goTohome();
  }
// Devuelve informacion del usuario
  Future<User> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser1();
      return user;
    } catch (_) {
      print(_);
      return User.empty;
    }
  }
}
