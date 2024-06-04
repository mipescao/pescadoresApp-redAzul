import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pescadoresapp_redazul/routes/globalRoutes.dart';

void main() {
  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, // Opcional: permite el modo vertical invertido
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trazul',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.blue,
          selectionColor: Colors.blue,
          selectionHandleColor: Colors.blue,
        ),
      ),

      initialRoute: '/',
      // Archivo de rutas
      routes: AppRoutes.routes,
    );
  }
}