import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/HandModel.dart';

class HandPlayerView extends StatelessWidget {
  const HandPlayerView({required this.model});

  final HandModel model;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: false,
      child: Stack(
        children: [
          Container(
            color: Colors.amber[300]!.withOpacity(0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    children: model.cards
                        .map((cardModel) => GameCard(model: cardModel))
                        .toList(),
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
