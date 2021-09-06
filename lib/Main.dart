import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Util/Decks/Demacia.dart';
import 'package:pac4/Pages/Game/Util/Decks/Noxus.dart';
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
      ],
      child: MaterialApp(
        title: 'Truco of Legends',
        home: GamePage(),
      ),
    );
  }
}
