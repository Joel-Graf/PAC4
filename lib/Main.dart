import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardTiles.dart';
import 'package:pac4/Pages/Game/Providers/EnemyCards.dart';
import 'package:pac4/Pages/Game/Providers/Game.dart';
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
    // Orientação retrato fixa
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // Sem mostrar barra de status do celular
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
          create: (BuildContext context) => BoardTiles(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => Game(),
        ),
      ], // TODO: Colocar em locais mais próximos da realidade para mais desempenho
      child: MaterialApp(
        title: 'Truco of Legends',
        home: GamePage(),
      ),
    );
  }
}
