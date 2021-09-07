import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/EnemyHand.dart';
import 'package:pac4/Pages/Game/Widgets/PlayerHand.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: HandEnemy(),
              ),
              Expanded(
                flex: 4,
                child: Board(),
              ),
              Expanded(
                flex: 2,
                child: HandPlayer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
