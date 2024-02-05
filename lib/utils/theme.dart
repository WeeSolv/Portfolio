import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Map<String, dynamic> appAsset = {
  'primary': 0xFF222831,
  'buttonBlue': 0xFF008A90,
  'textVisionColor': 0xFF00ADB5,
  'camera': 'assets/camera.svg',
  'smily': 'assets/smily.svg',
  'battery': 'assets/battery.svg',
  'box': 'assets/box.svg',
  'check': 'assets/check.svg',
  'cloud': 'assets/cloud.svg',
  'message': 'assets/message.svg',
  'backgroundImage': 'assets/hello.png',
  'buttonPurple': 0xFFA855F7,
  'logo': './assets/logo 2.svg'
};

class CustomTheme {
  final Color primary;
  final Color buttonBlue;
  final Color buttonPurple;
  final String backgroundImage;
  final SvgPicture logo;
  final SvgPicture smily;
  final SvgPicture camera;
  final SvgPicture box;
  final SvgPicture message;
  final SvgPicture check;
  final SvgPicture battery;
  final SvgPicture cloud;
  CustomTheme._(
      {required this.box,
      required this.logo,
      required this.backgroundImage,
      required this.message,
      required this.check,
      required this.battery,
      required this.cloud,
      required this.primary,
      required this.buttonBlue,
      required this.buttonPurple,
      required this.camera,
      required this.smily});
  factory CustomTheme._fromJson(Map<String, dynamic> json) => CustomTheme._(
      logo: SvgPicture.asset(
        json['logo'],
        width: 50,
        height: 50,
      ),
      backgroundImage: json['backgroundImage'],
      box: SvgPicture.asset(json['box']),
      message: SvgPicture.asset(json['message']),
      battery: SvgPicture.asset(json['battery']),
      cloud: SvgPicture.asset(json['cloud']),
      check: SvgPicture.asset(json['check']),
      primary: Color(json['primary']),
      buttonBlue: Color(json['buttonBlue']),
      buttonPurple: Color(json['buttonPurple']),
      camera: SvgPicture.asset(json['camera']),
      smily: SvgPicture.asset(json['smily']));

  factory CustomTheme() => CustomTheme._fromJson(appAsset);
}
