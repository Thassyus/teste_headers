import 'package:get/get_connect/connect.dart';

class ApiProvider extends GetConnect {
  // Get request
  Future<Response> pegaDados() =>
      get('https://comunidade3d.com.br/musicasdb/artistas');
}
