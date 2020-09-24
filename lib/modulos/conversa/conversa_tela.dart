import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mychat/modulos/conversa/conversa_controller.dart';
import 'package:mychat/modulos/perfil/perfil.dart';
import 'package:mychat/modulos/perfil/perfil_icon.dart';
import 'package:mychat/preferences.dart';

class Conversa extends GetView<ConversaController> {
  Perfil perfil = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.video_call,
              color: Preferences.themeColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
              color: Preferences.themeColor,
            ),
            onPressed: () {},
          ),
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Preferences.themeColor,
              ),
              itemBuilder: (context) => <PopupMenuEntry>[
                    PopupMenuItem(child: Text('Limpar conversa'))
                  ])
        ],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Get.back()),
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${perfil.nome}',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
              '${perfil.status}',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(children: [
            ListTile(
              leading: PerfilIcon(
                url: perfil.urlFoto,
              ),
              isThreeLine: true,
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed sem nec velit laoreet sollicitudin. Proin. ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ListTile(
              leading: PerfilIcon(
                url: perfil.urlFoto,
              ),
              isThreeLine: true,
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed sem nec velit laoreet sollicitudin. Proin. ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.transparent,
              ),
              isThreeLine: true,
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Preferences.themeColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed sem nec velit laoreet sollicitudin. Proin. ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
