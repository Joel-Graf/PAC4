import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/GameCard.dart';
import 'package:pac4/Pages/Game/Util/Classes.dart';
import 'package:pac4/Pages/Game/Util/MyCard.dart';

class Tile extends StatefulWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  bool accepted = true;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return accepted
            ? EmpetyTile()
            : GameCard(
                image: 'novata',
                team: Team.ENEMY,
                region: Region.NOXUS,
                rarity: Rarity.COMMON,
                name: 'AAA',
                description: 'AAA',
                atributtes: Attributes(1, 1, 1, 1),
              );
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        accepted = !accepted;
      },
    );
  }
}

class EmpetyTile extends StatelessWidget {
  const EmpetyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Container(
        color: Colors.purple[700]!,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
