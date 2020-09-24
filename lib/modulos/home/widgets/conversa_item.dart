import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mychat/modulos/conversa/conversa_tela.dart';
import 'package:mychat/modulos/home/home_controller.dart';
import 'package:mychat/modulos/perfil/perfil.dart';
import 'package:mychat/modulos/perfil/perfil_icon.dart';
import 'package:mychat/preferences.dart';

class ConversaItem extends GetView<HomeController> {
  const ConversaItem({
    Key key,
    this.perfil,
  }) : super(key: key);
  final Perfil perfil;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.toNamed('/conversa', arguments: perfil),
      leading: Stack(
        children: [
          PerfilIcon(url: perfil.urlFoto),
          Positioned(
            top: 3,
            left: 3,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 5,
              child: CircleAvatar(
                backgroundColor: Preferences.infoColor,
                radius: 4,
              ),
            ),
          )
        ],
      ),
      isThreeLine: true,
      title: Text(perfil.nome),
      subtitle: Text(
          'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
                  .substring(0, 32) +
              '...'),
      trailing: CircleAvatar(
          child: Text(
            '8',
            style: TextStyle(color: Colors.white),
          ),
          radius: 15,
          backgroundColor: Preferences.infoColor),
    );
  }
}
