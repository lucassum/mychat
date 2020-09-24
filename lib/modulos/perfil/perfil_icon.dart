import 'package:flutter/material.dart';

import 'package:mychat/modulos/perfil/perfil.dart';
import 'package:mychat/preferences.dart';

class PerfilIcon extends StatelessWidget {
  const PerfilIcon({
    Key key,
    this.radius,
    @required this.url,
  }) : super(key: key);
  final double radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Preferences.infoColor,
      radius: radius != null ? radius + 3 : 28,
      child: CircleAvatar(
        radius: radius ?? 25,
        backgroundImage: Image.network(url).image,
      ),
    );
  }
}
