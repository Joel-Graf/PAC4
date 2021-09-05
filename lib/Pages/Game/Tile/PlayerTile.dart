import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';

class PlayerTile extends StatelessWidget {
  final GameCard? gameCard;

  const PlayerTile(this.gameCard, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gameCard ?? EmpetyTile();
  }
}
