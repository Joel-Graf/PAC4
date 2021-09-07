import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/Game.dart';
import 'package:pac4/Pages/Game/Providers/PlayerCards.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';
import 'package:pac4/Pages/Game/Widgets/Card/PlayerCard.dart';
import 'package:provider/provider.dart';

class HandPlayer extends StatelessWidget {
  const HandPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Game>(
      builder: (context, gameProvider, child) => IgnorePointer(
        ignoring: gameProvider.turn != Team.PLAYER,
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
            gameProvider.turn != Team.PLAYER
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
