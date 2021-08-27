import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Board.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Expanded(
              flex: 7,
              child: Board(),
            ),
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// GameCard(
//   region: Region.DEMACIA,
//   rarity: Rarity.COMMON,
//   name: "Nome",
//   description: "Descricao",
//   atributtes: Atributtes(1, 2, 3, 4),
// )
