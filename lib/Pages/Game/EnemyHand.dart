import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/EnemyCard.dart';
import 'package:pac4/Pages/Game/Util/Decks/Noxus.dart';
import 'package:provider/provider.dart';

class HandEnemy extends StatelessWidget {
  const HandEnemy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[300]!.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Consumer<EnemyCards>(
              builder: (context, enemyCardsProvider, child) => Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: enemyCardsProvider.enemyCards
                    .map((cardData) => EnemyCard(cardData))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
