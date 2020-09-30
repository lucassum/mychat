import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mychat/modulos/home/home_controller.dart';
import 'package:mychat/modulos/home/widgets/conversa_item.dart';
import 'package:mychat/modulos/perfil/perfil.dart';
import 'package:mychat/modulos/perfil/perfil_icon.dart';
import 'package:mychat/preferences.dart';
import 'package:mychat/utils.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Preferences.themeColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            floating: false,
            pinned: true,
            title: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('MyChat'),
            ),
            actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
            expandedHeight: 150,
            collapsedHeight: 70,
            flexibleSpace: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: FlexibleSpaceBar(
                background: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding:
                            const EdgeInsets.only(top: 25, left: 8, right: 8),
                        child: PerfilIcon(
                          url: MapFotos.map[index],
                          radius: 30,
                        ));
                  },
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView(
                  children: [
                    ConversaItem(
                      perfil: Perfil(
                          nome: 'João Carlos',
                          status: 'Ativo',
                          urlFoto:
                              'https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
