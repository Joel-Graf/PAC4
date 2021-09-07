import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Providers/PlayerCards.dart';
import 'package:pac4/Pages/Game/Util/Constants.dart';
import 'package:pac4/Pages/Game/Widgets/Hands/Card/PlayerCard.dart';
import 'package:provider/provider.dart';

class HandPlayer extends StatelessWidget {
  const HandPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GameController>(
      builder: (context, gameController, child) => IgnorePointer(
        ignoring: gameController.turn != Team.PLAYER,
        child: Stack(
          children: [
            Container(
              color: Colors.amber[300]!.withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: Consumer<PlayerCards>(
                      builder: (context, playerCardsProvider, child) => Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        children: playerCardsProvider.playerCards
                            .map((cardData) => PlayerCard(cardData))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gameController.turn != Team.PLAYER
                ? Container(
                    color: Colors.black.withOpacity(0.4),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
