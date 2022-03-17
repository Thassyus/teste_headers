import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_headers/controladores/controlador_home.dart';

class Home extends GetView<ControladorHome> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: controller.obx(
              (state) => Center(child: Text(state!.headers.toString())),
              onLoading: const Center(child: Text("Aperte o botão"))),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => controller.carregaDados()),
      ),
    );
  }
}
