import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/EnemyCards.dart';
import 'package:pac4/Pages/Game/Providers/GameController.dart';
import 'package:pac4/Pages/Game/Widgets/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Card/EnemyCard.dart';
import 'package:provider/provider.dart';

class HandEnemy extends StatelessWidget {
  const HandEnemy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GameController>(
      builder: (context, gameProvider, child) => Container(
        color: gameProvider.turn == Team.ENEMY
            ? Colors.amber[300]!.withOpacity(0.8)
            : Colors.grey.withOpacity(0.6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Consumer<EnemyCards>(
                builder: (context, enemyCardsProvider, child) =>
                    SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: enemyCardsProvider.enemyCards
                        .map((cardData) => Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: EnemyCard(cardData),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
