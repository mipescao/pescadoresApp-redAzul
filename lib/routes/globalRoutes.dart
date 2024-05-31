// app_routes.dart

import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/home.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/register.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => Home(),
    '/second': (context) => pageRegister(),
  };
}