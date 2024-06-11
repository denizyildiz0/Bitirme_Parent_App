import 'package:flutter/material.dart';

class Etkinlik {
  final String etkinlikImage;
  final String etkinlikName;
  final String etkinlikIngredients;
  final List<String> malzeme;
  final List<String> imageDetay;
  final String buttonname;
  final IconData etkinlikIcon;

  Etkinlik({
    required this.etkinlikImage,
    required this.etkinlikName,
    required this.etkinlikIngredients,
    required this.malzeme,
    required this.imageDetay,
    required this.buttonname,
    required this.etkinlikIcon,
  });
}
