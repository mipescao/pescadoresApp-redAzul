import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pescadores/atomicDesign/pages/authentication/bloc/authentication_bloc.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageMain.dart';
import 'package:pescadoresapp_redazul/globalStyles/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Importación del paquete de autenticación
import 'package:authentication_repository/authentication_repository.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/authentication/bloc/authentication_bloc.dart';
import 'package:user_repository/user_repository.dart';

import 'routes/globalRoutes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  // instancias de closes
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final userRepository = UserRepository();
  final authenticationRepository = AuthenticationRepository();

    // verifica la autenticacion del usuario
  await authenticationRepository.veriFys();
  runApp(MainApp(authenticationRepository: authenticationRepository, userRepository: userRepository,));
}



class MainApp extends StatefulWidget {
  const MainApp({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository, _userRepository = userRepository ;

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  @override
  State<MainApp> createState() => _MainAppState();
}


class _MainAppState extends State<MainApp> {
  NavigatorState get _navigator => navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
  print( navigatorKey.currentContext);
    return RepositoryProvider.value(
      value: widget._authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          authenticationRepository: widget._authenticationRepository, 
          userRepository: widget._userRepository
        ),
        // child: BackButtonInterceptor(child: verifyUpdate()),
        child: MaterialApp(
          title: 'Modulo de pescadores',
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          routes: AppRoutes.routes,
          theme: ThemeData(
            // Cambiar el color por defecto del cursor
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: colores.blue1,  // Color del cursor
              selectionColor: colores.blue1,  // Color de la selección
              selectionHandleColor: colores.blue1,  // Color del manipulador de selección
            ),
            
            // textTheme: GoogleFonts.nunitoTextTheme(),
          ),
          // home: pageMainPage(),
          builder: (context, child) {
            return Scaffold(
              body:  BlocListener<AuthenticationBloc, AuthenticationState>(
                listener: (context, state) async {
                  switch (state.status) {
                    case AuthenticationStatus.authenticated:
                        _navigator.pushAndRemoveUntil(
                          pageMain.route(),
                          // pageHome()
                          (route) => false,
                        );

                      
                      break;
                    case AuthenticationStatus.unauthenticated:
                        _navigator.pushAndRemoveUntil(
                          pageMain.route(),
                          // pageHome()
                          (route) => false,
                        );
                      break;
                    case AuthenticationStatus.gotostart:
                        _navigator.pushAndRemoveUntil(
                          pageMain.route(),
                          // pageHome()
                          (route) => false,
                        );
                      
                      break;
                    default:
                      SplashPage.route();

                      // SplashPage.route();

                  }
                },
                child: child,
              ),
            );
          },
          onGenerateRoute: (_)  => SplashPage.route(),
        ),
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(colores.blue1)
      )),
    );
  }
}
