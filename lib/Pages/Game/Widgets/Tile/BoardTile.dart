import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardTiles.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/EmpetyTile.dart';
import 'package:provider/provider.dart';

class BoardTile extends StatefulWidget {
  const BoardTile(this.position, {Key? key}) : super(key: key);

  final Position position;

  @override
  _BoardTileState createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> with ChangeNotifier {
  CardModel? gameCardModel;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return gameCardModel ?? EmpetyTile();
      },
      onWillAccept: (data) {
        return this.gameCardModel == null;
      },
      onAccept: (CardModel data) {
        this.gameCardModel = data;
        Provider.of<BoardTiles>(context, listen: false)
            .onCardPlay(widget.position);
        notifyListeners();
      },
    );
  }
}
