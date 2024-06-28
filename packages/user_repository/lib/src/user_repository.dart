import 'dart:async';
import 'dart:convert';
import 'package:cache/cacheEx.dart';

import 'package:user_repository/src/models/models.dart';
// import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:environmentConfiguration/config.dart';

String domain = AppConfig.apiUrl;
String version = AppConfig.apiKey;
String token = AppConfig.apiToken;

class ApiResponse<T> {
  final T data;
  final String error;

  ApiResponse({required this.data, required this.error});
}

class notificacionLoteClass {
  String token;
  String quantity;
  String productiveUnitName;
  String specie;
  notificacionLoteClass({
    required this.productiveUnitName,
    required this.quantity,
    required this.specie,
    required this.token
  });
}

class statusResponse {
  final bool? informacionAlevinera;
  final bool? informacionGranja;
  final bool? informacionPadrotes;
  final bool informacionBioseguridadAlevinera;
  final bool piensosAlevinera;
  final bool certificacionesAlevinera;
  final bool informationPermisos;

  statusResponse({this.informacionAlevinera,this.informacionGranja, this.informacionPadrotes, required this.informacionBioseguridadAlevinera, required this.piensosAlevinera, required this.certificacionesAlevinera, required this.informationPermisos});
  
}

class userProfilData {
  final String? name;
  final String? documentType;
  final int documentNumber;
  final String? secondLastName;
  final String? lastName;
  final int? cellPhone;
  final String? department;
  final int? dv;
  final String city;
  final String? cityName;
  final String? dateBirth;
  final String profileType;
  final String address;
  userProfilData({required this.address, required this.city, required this.dateBirth, required this.documentNumber, required this.documentType, required this.dv, required this.name, this.secondLastName, required this.lastName, required this.cellPhone, required this.department,required this.profileType, this.cityName});
}



class UserServices {
    Future<ApiResponse<String>> postTerms({
      required bool accept,
    }) async {
      try {
        final User tokenUser = await UserRepository().getUser1(); 
        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': tokenUser.id,
        };

        final url = Uri.https(domain, 'apis/$version/users/acceptTerms');

        var body = {
          "accept": accept
        };

            var req = http.Request('POST', url);
            req.headers.addAll(headersList);
            req.body = json.encode(body);


            var res = await req.send();
            final resBody = await res.stream.bytesToString();

            final Map<String, dynamic> jsonResponse = json.decode(resBody);


      if (res.statusCode >= 200 && res.statusCode < 300) {
            return  ApiResponse(data: '', error: '');
      } else {
        return  ApiResponse(data: '',error: '1');
      }
        
      } catch (e) {
        return ApiResponse(data: '',error: '0');
      }
    }


    Future<ApiResponse<String>> permsAunap({
      required bool accept,
    }) async {
      try {

        final User tokenUser = await UserRepository().getUser1(); 
        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': tokenUser.id,
        };

        final url = Uri.https(domain, 'apis/$version/users/permsAunap');

        var body = {
          "accept": accept
        };

        var req = http.Request('POST', url);
        req.headers.addAll(headersList);
        req.body = json.encode(body);


        var res = await req.send();
        final resBody = await res.stream.bytesToString();

        final Map<String, dynamic> jsonResponse = json.decode(resBody);


      if (res.statusCode >= 200 && res.statusCode < 300) {
            return  ApiResponse(data: '', error: '');
      } else {
        return  ApiResponse(data: '',error: '1');
      }
        
      } catch (e) {
        return ApiResponse(data: '',error: '0');
      }
    }

    Future<ApiResponse<String>> productiveUnitFuntion({
      required String productiveUnitValue,
    }) async {
      try {

        final User tokenUser = await UserRepository().getUser1(); 
        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': tokenUser.id,
        };

        final url = Uri.https(domain, 'apis/$version/productiveUnits/create');

        var body = {
          "productiveUnitType": productiveUnitValue
        };

        var req = http.Request('POST', url);
        req.headers.addAll(headersList);
        req.body = json.encode(body);


        var res = await req.send();
        final resBody = await res.stream.bytesToString();

        final Map<String, dynamic> jsonResponse = json.decode(resBody);


      if (res.statusCode >= 200 && res.statusCode < 300) {
            return  ApiResponse(data: (jsonResponse["productiveUnitId"]).toString(), error: '');
      } else {
        return  ApiResponse(data: '',error: '1');
      }
        // return ApiResponse(data: '', error: '');
        
      } catch (e) {
        print(e);
        return ApiResponse(data: '',error: '0');
      }
    }

    Future<statusResponse?> statusRegistration({
      required String productiveUnitValue,
      required String authorization,
    }) async {
      try {
        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': authorization,
        };
        final http.Client _httpClient = http.Client();
        http.Response response;
        Object body;

        final url = Uri.https(domain, 'apis/$version/productiveUnits/profileState', {"productiveUnitId":productiveUnitValue});
        response = await _httpClient.get(url, headers: headersList);

        var req = http.Request('GET', url);
        // var body = {
        //   "productiveUnitType": productiveUnitValue
        // };
      if (response.statusCode == 200) {
        body = jsonDecode(response.body)['state'];
        final statusResponse responses = statusResponse(
          certificacionesAlevinera: jsonDecode(response.body)['state']['certificacionesAlevinera'],
          informacionAlevinera: jsonDecode(response.body)['state']['informacionAlevinera'] ?? null,
          // informacionGranja: jsonDecode(response.body)['state']['informacionGranja'] ?? null,
          informacionBioseguridadAlevinera: jsonDecode(response.body)['state']['informacionBioseguridadAlevinera'],
          informacionPadrotes: jsonDecode(response.body)['state']['informacionPadrotes'] ?? null,
          piensosAlevinera: jsonDecode(response.body)['state']['piensosAlevinera'],
          informationPermisos:  jsonDecode(response.body)['state']['permisosAlevinera']
        );

        return responses;
      } else {
        
          return null;
        // return  ApiResponse(data: '',error: );
      }
      } catch (e) {
        print(e);
        return null;
      }
    }

    Future<String> getNameUnitProductive() async {
      try {
        final authToken = await UserRepository().getUser1();

        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': authToken.id,
        };
        final unidad = await UserRepository().getProductiveUnitId();
        final http.Client _httpClient = http.Client();
        http.Response response;
        dynamic body;

        final url = Uri.https(domain, 'apis/$version/productiveUnits/nameWithId', {"productiveUnitId":unidad.toString()});
        response = await _httpClient.get(url, headers: headersList);

        // var req = http.Request('GET', url);
        // var body = {
        //   "productiveUnitType": productiveUnitValue
        // };
      if (response.statusCode == 200) {
        body = jsonDecode(response.body);
        String data = body['name'];


        return data;
      } else {

          return '';
        // return  ApiResponse(data: '',error: );
      }
      } catch (e) {
        return '';
      }
    }

  Future<List<notificacionLoteClass>> notificacionesLotes() async {
        try {
          final unidad = await UserRepository().getProductiveUnitId();

          final http.Client _httpClient = http.Client();
          http.Response response;
          List<dynamic> body;
          List<notificacionLoteClass> bodyResponse = [];
        final authToken = await UserRepository().getUser1();

        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': authToken.id,
        };
          // Realiza la solicitud a la API
          final url = Uri.https(domain, 'apis/$version/productiveUnits/edit/checkFingerlignsDispatch', {"productiveUnitId":unidad.toString()});
          response = await _httpClient.get(url, headers: headersList);

          // Verifica si la solicitud fue exitosa
          if (response.statusCode == 200) {
            body = jsonDecode(response.body)['dispatchsPending'] as List<dynamic>;
            for (var element in body) {
              if (element != Null && element != null && element != 'Null' && element != 'null' && element.isNotEmpty) {
                bodyResponse.add(
                  notificacionLoteClass(productiveUnitName: element['productiveUnitName'] ?? '', quantity: element['quantity'] ?? '', specie: element['specie'] ?? '', token: element['token'] ?? '')
                );
              }
            }
            return bodyResponse;
          } else {
            // return[];
            throw Exception('Error al realizar la solicitud');
          }
        } catch (e) {
          print('Error: $e');
          return [];
        }

        // Espera un tiempo antes de realizar la siguiente consulta
         // Por ejemplo, consulta cada 5 segundos
      
  }

  Future<bool> notificacionesLotesAceptar({
    required String token
  }) async {
        try {
          final unidad = await UserRepository().getProductiveUnitId();

          final http.Client _httpClient = http.Client();
          http.Response response;

        final authToken = await UserRepository().getUser1();

        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': authToken.id,
        };
          // Realiza la solicitud a la API
          final url = Uri.https(domain, 'apis/$version/productiveUnits/edit/accetpFingerlignsDispatch', {"productiveUnitId":unidad.toString(), 'token': token});
          response = await _httpClient.get(url, headers: headersList);

          // Verifica si la solicitud fue exitosa
          if (response.statusCode == 200) {
            return true;
          } else {
            return false;            
          }
        } catch (e) {
          print('Error: $e');
          return false;
        }

        // Espera un tiempo antes de realizar la siguiente consulta
         // Por ejemplo, consulta cada 5 segundos
      
  }

  Future<bool> notificacionesLotesRechazar({
    required String token
  }) async {
        try {
          final unidad = await UserRepository().getProductiveUnitId();

          final http.Client _httpClient = http.Client();
          http.Response response;

        final authToken = await UserRepository().getUser1();

        var headersList = {
          'Content-Type': 'application/json',
          'Authorization': authToken.id,
        };
          // Realiza la solicitud a la API
          final url = Uri.https(domain, 'apis/$version/productiveUnits/edit/checkFingerlignsDispatch', {"productiveUnitId":unidad.toString(), 'token': token});
          response = await _httpClient.get(url, headers: headersList);

          // Verifica si la solicitud fue exitosa
          if (response.statusCode == 200) {
            return true;
          } else {
            return false;            
          }
        } catch (e) {
          print('Error: $e');
          return false;
        }

        // Espera un tiempo antes de realizar la siguiente consulta
         // Por ejemplo, consulta cada 5 segundos
      
  }

}

class UserRepository {
  
  late User _user;


  // informacion de usuario (Token)

  Future<String> getUser(String token) async {
    print('hash');
    return Future.delayed(
      const Duration(milliseconds: 300),
      () async { _user = User(id: token); await AuthSecureStorage.saveAuthToken('authToken',_user.id); return _user.id ;}
    );
  }

  Future<User> getUser1() async {
    final veriFy = await AuthSecureStorage.getAuthToken('authToken');
    if (veriFy != null) {
      return User(id: veriFy);
    } else {

      return User.empty;
    }
  }
  
  Future<bool> deleteUser() async {
    try {
      AuthSecureStorage.clearAuthToken('authToken');
      return true;
    } catch (e) {
      print('---Error delete user key--');
      print(e);
      print('--Error delete user key--');
      return false;
      
    }
  }

  

  // El usuario se esta registrando
  Future<String> userProfile() async {
    final veriFy = await AuthSecureStorage.getAuthToken('userPofile');
    if (veriFy != null) {
      if (veriFy == 'true') {
        return veriFy;
      } else {
        await AuthSecureStorage.clearAuthToken('userPofile');
        return '';
      }
    } else {
      return '';
    }
  }

  Future<bool> deleteUserProfile() async {
    try {
      AuthSecureStorage.clearAuthToken('userPofile');
      return true;
    } catch (e) {
      print('---Error delete user Profile--');
      print(e);
      print('--Error delete user Profile--');
      return false;
      
    }
  }
  // Código de verificacion (Al crear la cuenta)
  Future<String> getUserCode() async {
    print('hash');
    return Future.delayed(
      const Duration(milliseconds: 100),
      () async {  await AuthSecureStorage.saveAuthToken('codeUsers','true'); return 'true' ;}
    );
  }

    Future<String> userCode() async {
      final veriFy = await AuthSecureStorage.getAuthToken('codeUsers');
      if (veriFy != null) {
        if (veriFy == 'true') {
          return veriFy;
        } else {
          await AuthSecureStorage.clearAuthToken('codeUsers');
          return '';
        }
      } else {
        return '';
      }
    }

    


  // terminos y condiciones
  Future<String> getuserTerms() async {

    final response = await UserServices().postTerms(accept: true);
    if (response.error.isEmpty) {
      return Future.delayed(
        const Duration(milliseconds: 100),
        () async {  await AuthSecureStorage.saveAuthToken('userTerms','true'); return 'true' ;}
      );
    } else {
      return response.error;
    }
  }

    Future<String> userTerms() async {
      final veriFy = await AuthSecureStorage.getAuthToken('userTerms');
      if (veriFy != null) {
        if (veriFy == 'true') {
          return veriFy;
        } else {
          await AuthSecureStorage.clearAuthToken('userTerms');
          return '';
        }
      } else {
        return '';
      }
    }

    // Autorizacion para compartir datos con la AUNAP
  Future<String> getAuthorizeAUNAP(String bolean) async {
    final response;
    if (bolean == 'true') {
      response = await UserServices().permsAunap(accept: true);
    } else {
      response = await UserServices().permsAunap(accept: false);
    }
    if (response.error.isEmpty) {
        await AuthSecureStorage.saveAuthToken('AuthorizeAUNAP',bolean); return bolean;
    } else {
      return response.error;
    }
    // print();

  }

    Future<String> AuthorizeAUNAP() async {
      final veriFy = await AuthSecureStorage.getAuthToken('AuthorizeAUNAP');
      if (veriFy != null) {
        if (veriFy == 'true') {
          return veriFy;
        } else {
          return 'false';
        }
      } else {
        return '';
      }
    }

      // Autorizacion para compartir datos con la AUNAP
  Future<String> productiveUnit(String productiveUnitValue) async {
    final response = await UserServices().productiveUnitFuntion(productiveUnitValue: productiveUnitValue);
    if (response.error.isEmpty) {
      await productiveUnitId(response.data);
      AuthSecureStorage.saveAuthToken('productiveUnit',productiveUnitValue); return productiveUnitValue ;
    } else {
      print('error ${response.error}');
      return response.error;
    }
    // print();

  }

  Future<void> changeProductiveUnit(String productiveUnitValue) async {


        await AuthSecureStorage.saveAuthToken('productiveUnit',productiveUnitValue);


  }

    
    Future<String?> getProductiveUnit() async {
      final veriFy = await AuthSecureStorage.getAuthToken('productiveUnit');
      print(veriFy);
      if (veriFy != null) {
          return veriFy;
      } else {
        return null;
      }
    }
  
  Future<String> productiveUnitId(String productiveUnitValue) async {
    // final response = await UserServices().productiveUnitFuntion(productiveUnitValue: productiveUnitValue);
    // if (response.error.isEmpty) {
        print('---------------productiveUnitValue-----------------------');
        print(productiveUnitValue);
        print('---------------productiveUnitValue-----------------------');
    await AuthSecureStorage.saveAuthToken('productiveUnitId',productiveUnitValue); return productiveUnitValue ;

    // } else {
      // return response.error;
    // }
    // print();

  }

    Future<String?> getProductiveUnitId() async {
      final veriFy = await AuthSecureStorage.getAuthToken('productiveUnitId');
      // print(veriFy);
      if (veriFy != null) {
          return veriFy;
      } else {
        print('---------------null-----------------------');
        print(veriFy);
        print('---------------null-----------------------');
        return null;
      }
    }

  Future<String> productiveUnitName(String productiveUnitName) async {

    await AuthSecureStorage.saveAuthToken('productiveUnitName',productiveUnitName); return productiveUnitName ;


  }

    Future<String?> getproductiveUnitName() async {
      final veriFy = await AuthSecureStorage.getAuthToken('productiveUnitName');
      print(veriFy);
      if (veriFy != null) {
          return veriFy;
      } else {
        return null;
      }
    }
    
    Future<String> getEmil() async {
      final veriFy = await  AuthSecureStorage.getAuthToken('email');;
      print(veriFy);
      if (veriFy != null) {
          return veriFy;
      } else {
        return '';
      }
    }

    Future createEmil(String value) async {
      final veriFy = await  AuthSecureStorage.saveAuthToken('email', value);
    }

  Future<bool> configurationStatus(String configuration) async {
    print('hash');
    // print();
    if (await getConfigurationStatus(configuration) == true) {
      return true;
    } else {
        await AuthSecureStorage.saveAuthToken(configuration,'true'); return true ;
    }
  }

  Future<bool> changeConfigurationStatus(String configuration, bool status) async {
    print('hash');
    // print();
    await AuthSecureStorage.saveAuthToken(configuration, status.toString());
    return status ;
  }

  Future<bool> getConfigurationStatus(String configuration) async {
    print('hash');
    // print();
    if (await AuthSecureStorage.getAuthToken(configuration) != null && await AuthSecureStorage.getAuthToken(configuration) == 'true') {
      return true;
    } else {
      return false;
    }
  }


  Future<statusResponse?> statusRegistration() async {
    try{

    final productUnit = await getProductiveUnitId();
    final User token = await getUser1();
    final statusResponse? response = await UserServices().statusRegistration(productiveUnitValue: productUnit != null?  productUnit : '', authorization: token.id);


    return response;
    } catch (e) {
      print(e);
      return null;
    }

  }

  Future<bool> backVerificationCode() async {
    try {
      // final response = await deleteUser();
      final response1 = await deleteUserProfile();
      if (response1 == true) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }


  }

  Future<void> deleteDataRegister() async {
    print('hash');
    try {
      await AuthSecureStorage.clearAuthToken('userPofile');
      await AuthSecureStorage.clearAuthToken('codeUsers');
      await AuthSecureStorage.clearAuthToken('userTerms');
      await AuthSecureStorage.clearAuthToken('AuthorizeAUNAP');
      await AuthSecureStorage.clearAuthToken('informationAlevinera');
      // await AuthSecureStorage.clearAuthToken('informationGranja');
      await AuthSecureStorage.clearAuthToken('informationPadrotes');
      await AuthSecureStorage.clearAuthToken('informationBiosecurity');
      await AuthSecureStorage.clearAuthToken('informationPiensos');
      await AuthSecureStorage.clearAuthToken('informationCertificados');
      await AuthSecureStorage.clearAuthToken('informationPermisos');
    } catch (e) {
      print(e);
    }
    // print();

  

  }

  Future<bool> logaut() async {
    print('hash');
    try {
      await AuthSecureStorage.clearAuthToken('userPofile');
      await AuthSecureStorage.clearAuthToken('codeUsers');
      await AuthSecureStorage.clearAuthToken('userTerms');
      await AuthSecureStorage.clearAuthToken('AuthorizeAUNAP');
      await AuthSecureStorage.clearAuthToken('informationAlevinera');
      // await AuthSecureStorage.clearAuthToken('informationGranja');
      await AuthSecureStorage.clearAuthToken('informationPadrotes');
      await AuthSecureStorage.clearAuthToken('informationBiosecurity');
      await AuthSecureStorage.clearAuthToken('informationPiensos');
      await AuthSecureStorage.clearAuthToken('informationCertificados');
      await AuthSecureStorage.clearAuthToken('informationPermisos');
      await AuthSecureStorage.clearAuthToken('productiveUnit');
      await AuthSecureStorage.clearAuthToken('productiveUnitId');
      await AuthSecureStorage.clearAuthToken('productiveUnitValue');
      await AuthSecureStorage.clearAuthToken('productiveUnitName');
      await AuthSecureStorage.clearAuthToken('email');
      // await AuthSecureStorage.clearAuthToken('authToken');
      return true;
    } catch (e) {
      print(e);
      return false;
    }
    // print();

  

  }

  Future<String> getNameUnitProductive() async {
    print('hash');
    try {
      final String response = await UserServices().getNameUnitProductive();
      return response;
    } catch (e) {
      print(e);
      return '';
    }
    // print();



  }


    // print();





}
