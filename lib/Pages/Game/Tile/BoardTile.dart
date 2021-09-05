import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Board.dart';
import 'package:pac4/Pages/Game/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Tile/EmpetyTile.dart';

class BoardTile extends StatefulWidget {
  const BoardTile(Position position, {Key? key}) : super(key: key);

  @override
  _BoardTileState createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> {
  GameCardModel? gameCardModel;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return gameCardModel ?? EmpetyTile();
      },
      onWillAccept: (data) {
        return this.gameCardModel == null;
      },
      onAccept: (GameCardModel data) {
        this.gameCardModel = data;
      },
    );
  }
}
