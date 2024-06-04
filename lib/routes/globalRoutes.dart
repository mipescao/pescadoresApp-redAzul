// app_routes.dart

import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageCreateAcount.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageMain.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageSelectTypeUser.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    // vista cuando entras a la app por primera vez.
    '/': (context) => pageMain(),


    // vistas del registro
    '/selectTypeUser': (context) => pageSelectTypeUser(),
    '/pageCreateAcount': (context) => pageCreateAcount(),

  };
}