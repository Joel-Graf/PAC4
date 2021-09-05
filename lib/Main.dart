import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pac4/Pages/Game/GamePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Orientação retrato fixa
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // Sem mostrar barra de status do celular
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Truco of Legends',
      home: GamePage(),
    );
  }
}
