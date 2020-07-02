import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'camera_controller.dart';

class CameraPage extends StatefulWidget {
  final String title;
  const CameraPage({Key key, this.title = "Camera"}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends ModularState<CameraPage, CameraController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(Icons.camera_alt),
    );
  }
}
