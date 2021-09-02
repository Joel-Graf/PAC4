import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Tile/Tile.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';

class HandEnemy extends StatelessWidget {
  const HandEnemy({Key? key}) : super(key: key);

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
              GameCard(
                image: 'demacia/champions/garen',
                team: Team.ENEMY,
                region: Region.DEMACIA,
                rarity: Rarity.COMMON,
                name: 'AAA',
                description: 'AAA',
                atributtes: Attributes(1, 1, 1, 1),
              ),
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
