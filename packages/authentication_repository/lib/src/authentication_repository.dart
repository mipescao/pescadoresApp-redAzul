import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
// import 'package:cache/cache.dart';
import 'package:cache/cacheEx.dart';
import 'package:user_repository/user_repository.dart';

// import 'package:user_repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:environmentConfiguration/config.dart';


String domain = AppConfig.apiUrl;
String domainRedAzul = AppConfig.apiUrRedAzul;
String version = AppConfig.apiKey;

class ApiResponse<T> {
  final T data;
  final String error;

  ApiResponse({required this.data, required this.error});
}

class loginData {
  String unitProductiveId;
  String unitProductiveIdType;

  loginData({required this.unitProductiveId, required this.unitProductiveIdType});
}


enum AuthenticationStatus { authenticated, unauthenticated, gotostart }

class logInAndSignUp {

  // final String domain = 'trazul.redazul.co';


  Future<ApiResponse<String>> logIn({
      required String username,
      required String password,
    }) async {
      try {
        dynamic bodyResponse; 
//         var headersList = {
// z
//         };

        final url = Uri.https(domain, 'apis/$version/users/login');

        var body = {
          "email": username,
          "password": password,

        };

        var req = await http.post(url, body: body);

      if (req.statusCode == 200) {

            // print(resBody);
            return  ApiResponse(data: jsonDecode(req.body)['session'], error: '');

      } else {
        // print(res.reasonPhrase);
        return  ApiResponse(data: '',error: '${jsonDecode(req.body)['error']}');
      }
        
      } catch (e) {
        print('Error en la solicitud HTTP: ${e}');
        return ApiResponse(data: '',error: '${e}');
      }
    }

  Future<ApiResponse<String>> createUser({
      required String email,
      required String password,
  }) async {
    try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final usertType = prefs.getInt("typeProfile");

    print('--------usertType');
    print(usertType);
    print('--------usertType');

    // = await AuthSecureStorage.getAuthToken('idrolUser');
    
    var headersList = {
      'Content-Type': 'application/json' 
    };

    final url = Uri.https(domain, 'apis/$version/users/register');

    var body = {
      "email": email,
      "password": password,
      "confirmPassword": password,
      "profileType": int.parse(usertType.toString()), 
    };

    // String body;

        var req = http.Request('POST', url);
        req.headers.addAll(headersList);
        req.body = json.encode(body);


        var res = await req.send();
        final resBody = await res.stream.bytesToString();
        final Map<String, dynamic> jsonResponse = json.decode(resBody);

        if (res.statusCode >= 200 && res.statusCode < 300) {

            print(jsonResponse['code']);
            return ApiResponse(data: jsonResponse['code'], error: '');
        } else {
          print(res.reasonPhrase);
          return ApiResponse(data: '',error: '${jsonResponse['error']}');
        }
    } catch (e) {
      return ApiResponse(data: '',error: '${e}');
    }
    
  }

  Future<bool> logOut() async {
    try {
      final authToken = await UserRepository().getUser1();
      var headersList = {
        'Content-Type': 'application/json',
        'Authorization': authToken.id,
      };
      final http.Client _httpClient = http.Client();
      http.Response response;
      final url = Uri.https(domain, 'apis/$version/users/logout');
      response = await _httpClient.get(url, headers: headersList);
      if (response.statusCode == 200) {
        return true;
      } else {
          return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }


  Future<bool> recoverPassword({
    required String email
  }) async {
    try {
      final http.Client _httpClient = http.Client();
      http.Response response;
      final url = Uri.https(domainRedAzul, 'apis/$version/users/recoveryPassword', {'email': email});
      response = await _httpClient.get(url);
      if (response.statusCode == 200) {
        return true;
      } else {
          return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> comfirmCodeRecoverPassword({
    required String email,
    required String code
  }) async {
    try {
      final http.Client _httpClient = http.Client();
      http.Response response;
      var body = {
        'email': email,
        'code': code
      };
      final url = Uri.https(domainRedAzul, 'apis/$version/users/confirmCodeRecovery');
      response = await _httpClient.post(url, body: body);
      if (response.statusCode == 200) {
        return true;
      } else {
          return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> changePassword({
    required String email,
    required String code1,
    required String code
  }) async {
    try {
      final http.Client _httpClient = http.Client();
      http.Response response;
      var body = {
        'email': email,
        'password': code,
        'confirmPassword': code1
      };
      final url = Uri.https(domainRedAzul, 'apis/$version/users/changePassword');
      response = await _httpClient.post(url, body: body);
      if (response.statusCode == 200) {
        return true;
      } else {
          return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}


class AuthenticationRepository {

    AuthenticationRepository({
        logInAndSignUp? LogInAndSignUp,
        UserRepository? userRepository,
    }) : _userRepository = userRepository ?? UserRepository(),
        _logInAndSignUp = LogInAndSignUp ?? logInAndSignUp();
        
  final UserRepository _userRepository;
  final logInAndSignUp _logInAndSignUp;

  // AuthenticationRepository() {
  //   _userRepository = UserRepository(); 
  // }
  // late final http.Client _httpClient;


  final _controller = StreamController<AuthenticationStatus>();

  final String baseUrl = "apis.mipescao.com";


  Stream<AuthenticationStatus> get status async* {
    // final auten = await AuthSecureStorage.getAuthToken('authToken');
      AuthenticationStatus.authenticated; 
    
    yield* _controller.stream;
  }

  Future<void> signUp({required String email, required String password}) async {
    try {
      final response = await _logInAndSignUp.createUser(
        email: email,
        password: password,
      );
      if (response.data.isNotEmpty) {
        dataUser = await _userRepository.getUser(response.data);
        await AuthSecureStorage.saveAuthToken('userPofile', 'true');
        await AuthSecureStorage.saveAuthToken('email', '$email');
        _controller.add(AuthenticationStatus.authenticated);
      } else {
        print('null');
        throw Exception('${response.error}');
      }
    } catch (e) {
      print(e);
      throw  Exception('${(e.toString()).split(':')[1]}');
    }
  }

  late var dataUser = '';
  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _logInAndSignUp.logIn(username: username, password: password);
      if (response.data.isNotEmpty) {
        dataUser = await _userRepository.getUser(response.data);
        await _userRepository.createEmil(username);
        print(dataUser);
        _controller.add(AuthenticationStatus.authenticated);
      } else {
        print('Error: ${response.error}');
        _controller.add(AuthenticationStatus.unauthenticated);
        throw Exception('${response.error}');
      }
    } catch (e) {
      print('Excepción: $e');
      throw Exception('$e');
    }

      // final endPointt = 'dev/users/login.php';
      // final url = Uri.https(baseUrl, endPointt);

      // print(username);
      // print(password);
      // http.Response response;
      // try {
      //   response = await _httpClient.post(url, body: {'email': username, 'password': password});
      // } on Exception {
      //   throw Exception();
      // }
      // if (response.statusCode != 200) {
      //   throw Exception();
      // } try {
      //   print(response.body);
      //   _controller.add(AuthenticationStatus.authenticated);
      //   print('0');
      // } on Exception {
      //   throw Exception();
      // }
  }

    User get currentUser {
        // final stringFinal = await AuthSecureStorage.getAuthToken();
        // if (stringFinal != null) {
          return User(id: dataUser);
        // } else {
          // return User.empty;
        // }
        // if (veriFy != null) {
        //   return User(veriFy);
        // } else {
        //   return User('');
        // }
    }

    Future<void> veriFys() async {
        final veryUser = await AuthSecureStorage.getAuthToken('authToken');
        if (veryUser != null) {
          print("sdsfdsf $veryUser");
          print('Verificacion');
          dataUser = veryUser;
          _controller.add(AuthenticationStatus.authenticated);
        } else {
          _controller.add(AuthenticationStatus.unauthenticated);

        }
      }

  void logOut() async {
    bool response = await _logInAndSignUp.logOut();
    if (response == true) {
      await UserRepository().logaut();
      AuthSecureStorage.clearAuthToken('authToken');
      _controller.add(AuthenticationStatus.unauthenticated);
    }
  }

  void goTohome() async {

      _controller.add(AuthenticationStatus.gotostart);

  }

  Future<bool> recoverPassword({required String email}) async {
    try {
      bool response = await  _logInAndSignUp.recoverPassword(email: email);
      return response;
    } catch (e) {
      return false;
    }
  }

  Future<bool> comfirmCodeRecoverPassword({required String email, required String code}) async {
    try {
      bool response = await  _logInAndSignUp.comfirmCodeRecoverPassword(email: email, code: code);
      return response;
    } catch (e) {
      return false;
    }
  }
 
  Future<bool> changePassword({required String email, required String code,  required String code1}) async {
    try {
      bool response = await  _logInAndSignUp.changePassword(email: email,code1: code1,code: code);
      return response;
    } catch (e) {
      return false;
    }
  }

  void dispose() => _controller.close();
}

// Future.delayed(
//       const Duration(milliseconds: 300),
//       () => _controller.add(AuthenticationStatus.authenticated),
//     );

//gfaskñlnfakslnfasljkfn