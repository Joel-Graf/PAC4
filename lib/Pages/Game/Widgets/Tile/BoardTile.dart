import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardTiles.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/BoardTileData.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/EmpetyTile.dart';
import 'package:provider/provider.dart';

class BoardTile extends StatefulWidget {
  const BoardTile(this.data, {Key? key}) : super(key: key);

  final BoardTileData data;

  @override
  _BoardTileState createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return widget.data.cardData != null
            ? CardModel(cardData: widget.data.cardData!)
            : EmpetyTile();
      },
      onWillAccept: (data) {
        return widget.data.cardData == null;
      },
      onAccept: (CardData data) {
        final newData = BoardTileData(widget.data.point, data);
        Provider.of<BoardTiles>(context, listen: false).onCardPlay(
          newData,
        );
        notifyListeners();
      },
    );
  }
}
