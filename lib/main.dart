import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mychat/modulos/conversa/conversa_controller.dart';
import 'package:mychat/modulos/conversa/conversa_tela.dart';
import 'package:mychat/modulos/home/home_controller.dart';
import 'package:mychat/modulos/home/home_tela.dart';
import 'package:mychat/preferences.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    initialBinding: HomeBinding(),
    theme: ThemeData(primaryColor: Preferences.themeColor),
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: Home(),
  ));
}

class AppPages {
  static List<GetPage> pages = [
    GetPage(name: '/', page: () => Home(), binding: HomeBinding()),
    GetPage(
        name: '/conversa', page: () => Conversa(), binding: ConversaBinding())
  ];
}
