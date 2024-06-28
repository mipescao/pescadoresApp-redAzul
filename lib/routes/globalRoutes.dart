// app_routes.dart

import 'package:flutter/material.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageCreateAcount/pageCreateAcount.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageInfoContact.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageInfoProfile.dart';

// ruta principal
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageMain.dart';

// Rutas del registro del pescador
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageCodeVerification.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageMoreAboutYou.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageSelectTypeUser.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageTermsAndConditions.dart';
import 'package:pescadoresapp_redazul/atomicDesign/pages/pageAunapAuthorization.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    // vista cuando entras a la app por primera vez.
    '/': (context) => pageMain(),

    // vistas del registro
    '/selectTypeUser': (context) => pageSelectTypeUser(),
    '/pageCreateAcount': (context) => pageCreateAcount(),
    '/codeVerification': (context) => pageCodeVerification(),
    '/termsAndConditions': (context) => pageTermsAndConditions(),
    '/unapAuthorization': (context) => pageAunapAuthorization(),
    '/moreAboutYou': (context) => pageMoreAboutYou(),
    '/infoContact': (context) => pageInfoContact(),
    '/infoProfile': (context) => pageInfoProfile(),
  };
}