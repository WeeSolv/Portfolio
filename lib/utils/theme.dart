import 'package:flutter/material.dart';

Map<String, dynamic> appAsset = {
  'primary': 0xFF222831,
  'buttonColor': 0xFF008A90,
  'textVisionColor': 0xFF00ADB5,
  'camera': 'asset/camera.svg',
  'smily': 'asset/smily.svg'
};

class CustomTheme {
  final Color primary;
  final Color buttonColor;
  final String smily;
  final String camera;
  CustomTheme._(
      {required this.primary,
      required this.buttonColor,
      required this.camera,
      required this.smily});
  factory CustomTheme._fromJson(Map<String, dynamic> json) => CustomTheme._(
      primary: Color(json['primary']),
      buttonColor: Color(json['buttonColor']),
      camera: json['camera'],
      smily: json['smily']);

  factory CustomTheme() => CustomTheme._fromJson(appAsset);
}
