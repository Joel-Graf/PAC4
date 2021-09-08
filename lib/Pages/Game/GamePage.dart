import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Board/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/EnemyHand/EnemyHand.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/PlayerHand/PlayerHand.dart';

class GamePage extends StatelessWidget {
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
                child: EnemyHand(),
              ),
              Expanded(
                flex: 4,
                child: Board(),
              ),
              Expanded(
                flex: 2,
                child: PlayerHand(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
