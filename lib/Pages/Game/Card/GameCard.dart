import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCardClass.dart';
import 'package:pac4/Pages/Game/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';

class GameCard extends StatefulWidget {
  const GameCard(this.cardClass, {Key? key}) : super(key: key);

  final GameCardClass cardClass;

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  Team team = Team.PLAYER;

  @override
  Widget build(BuildContext context) {
    return Draggable<GameCardModel>(
      child: GameCardModel(
        cardClass: widget.cardClass,
        team: team,
      ),
      feedback: Material(
        color: Colors.transparent,
        child: GameCardModel(
          cardClass: widget.cardClass,
          team: team,
        ),
      ),
      childWhenDragging: EmpetyTile(),
      data: GameCardModel(
        cardClass: widget.cardClass,
        team: team,
      ),
    );
  }
}
