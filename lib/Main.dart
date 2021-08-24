import 'package:flutter/material.dart';
import 'package:pac4/Widgets/Board.dart';
import 'package:pac4/Widgets/BoardTile.dart';
import 'Util/Classes.dart';
import 'Widgets/GameCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pac 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pac 4'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Board(),
                GameCard(
                  region: Region.DEMACIA,
                  rarity: Rarity.COMMON,
                  name: "Nome",
                  description: "Descricao",
                  atributtes: Atributtes(1, 2, 3, 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
