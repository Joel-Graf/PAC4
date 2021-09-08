import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/HandController.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/EnemyHand/EnemyHandView.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/HandModel.dart';
import 'package:provider/provider.dart';

class EnemyHand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameController>(
      builder: (context, gameController, child) => Consumer<EnemyController>(
        builder: (context, enemyController, child) => EnemyHandView(
          model: HandModel(
            cards: enemyController.cards,
            team: Team.ENEMY,
            turn: gameController.turn,
          ),
        ),
      ),
    );
  }
}
