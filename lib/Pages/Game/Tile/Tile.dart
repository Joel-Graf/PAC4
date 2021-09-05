import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Card/GameCard.dart';
import 'package:pac4/Pages/Game/Util/MyCard.dart';

class BoardTile extends StatefulWidget {
  const BoardTile({Key? key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<BoardTile> {
  GameCard? gameCard;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return gameCard ?? EmpetyTile();
      },
      onWillAccept: (data) {
        return this.gameCard == null;
      },
      onAccept: (GameCard data) {
        this.gameCard = data;
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
