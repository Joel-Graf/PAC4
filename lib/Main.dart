import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardController.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/HandController.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:pac4/Pages/Game/GamePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => playerController,
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => enemyController,
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => BoardController(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => GameController(),
        ),
      ],
      child: MaterialApp(
        title: 'Truco of Legends',
        home: GamePage(),
      ),
    );
  }
}
