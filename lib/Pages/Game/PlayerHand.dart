import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCardClass.dart';
import 'package:pac4/Pages/Game/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Tile/PlayerTile.dart';

class HandPlayer extends StatelessWidget {
  const HandPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[300]!.withOpacity(0.8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EmpetyTile(),
              PlayerTile(
                GameCard(
                  GameCardClass(
                    region: Region.DEMACIA,
                    atributtes: Attributes(1, 1, 1, 1),
                    name: 'novata',
                    rarity: Rarity.COMMON,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [],
          ),
        ],
      ),
    );
  }
}
