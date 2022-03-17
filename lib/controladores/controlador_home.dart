import 'package:get/get.dart';
import 'package:teste_headers/servicos/http_api_request.dart';

class ControladorHome extends GetxController
    with StateMixin<Response<dynamic>> {
  ApiProvider http = ApiProvider();

  void carregaDados() async {
    await http.pegaDados().then((value) {
      change(value, status: RxStatus.success());
      print(value.headers);
    });
  }
}
