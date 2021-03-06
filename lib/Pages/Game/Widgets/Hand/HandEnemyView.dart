import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/HandModel.dart';

class HandEnemyView extends StatelessWidget {
  const HandEnemyView({required this.model});

  final HandModel model;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !model.isTurn,
      child: Stack(
        children: [
          Container(
            color: Colors.amber[300]!.withOpacity(0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: model.cards
                          .map((cardModel) => Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: GameCard(model: cardModel),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (!model.isTurn)
            Container(
              color: Colors.black.withOpacity(0.6),
            )
        ],
      ),
    );
  }
}
