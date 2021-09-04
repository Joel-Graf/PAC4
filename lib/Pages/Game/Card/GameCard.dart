import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/Class.dart';
import 'package:pac4/Pages/Game/Card/Model.dart';
import 'package:pac4/Pages/Game/Tile/Tile.dart';

class GameCard extends StatelessWidget {
  const GameCard(this.cardClass, {Key? key}) : super(key: key);

  final GameCardClass cardClass;

  @override
  Widget build(BuildContext context) {
    return Draggable<GameCardClass>(
      feedback: Material(
        color: Colors.transparent,
        child: GameCardModel(cardClass),
      ),
      child: GameCardModel(cardClass),
      childWhenDragging: EmpetyTile(),
      data: cardClass,
    );
  }
}
