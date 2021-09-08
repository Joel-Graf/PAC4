import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/HandController.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/HandModel.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/PlayerHand/PlayerHandView.dart';
import 'package:provider/provider.dart';

class PlayerHand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameController>(
      builder: (context, gameController, child) => Consumer<PlayerController>(
        builder: (context, playerController, child) => PlayerHandView(
          model: HandModel(
            cards: playerController.cards,
            team: Team.PLAYER,
            turn: gameController.turn,
          ),
        ),
      ),
    );
  }
}
