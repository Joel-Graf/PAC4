import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardController.dart';
import 'package:pac4/Pages/Game/Providers/EnemyCards.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/PlayerCards.dart';
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
          create: (BuildContext context) => PlayerCards(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => EnemyCards(),
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
