import 'package:get/get.dart';
import 'package:teste_headers/controladores/controlador_home.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControladorHome());
  }
}
