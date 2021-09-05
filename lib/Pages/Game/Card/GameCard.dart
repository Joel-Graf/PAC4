import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCardData.dart';
import 'package:pac4/Pages/Game/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';

class GameCard extends StatefulWidget {
  const GameCard(this.cardData, {Key? key}) : super(key: key);

  final GameCardData cardData;

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  Team team = Team.PLAYER;

  @override
  Widget build(BuildContext context) {
    return Draggable<GameCardModel>(
      child: GameCardModel(
        cardData: widget.cardData,
        team: team,
      ),
      feedback: Material(
        color: Colors.transparent,
        child: GameCardModel(
          cardData: widget.cardData,
          team: team,
        ),
      ),
      childWhenDragging: EmpetyTile(),
      data: GameCardModel(
        cardData: widget.cardData,
        team: team,
      ),
    );
  }
}
