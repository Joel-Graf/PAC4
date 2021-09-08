import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Widgets/Hand/HandModel.dart';

class PlayerHandView extends StatelessWidget {
  const PlayerHandView(
    this.model, {
    Key? key,
  }) : super(key: key);

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
                        .map((cardModel) => GameCard(cardModel))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          if (model.isBlocked)
            Container(
              color: Colors.black.withOpacity(0.6),
            )
        ],
      ),
    );
  }
}
