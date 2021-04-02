import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  '1': Icons.android,
  '2': Icons.search_off_outlined,
  '3': Icons.satellite,
  '4': Icons.add_location,
  '5': Icons.update,
  '6': Icons.agriculture_rounded,
  '7': Icons.airplanemode_active,
  '8': Icons.tag_faces_rounded,
  '9': Icons.perm_media_sharp,
  '10': Icons.verified_user,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.deepPurpleAccent);
}
