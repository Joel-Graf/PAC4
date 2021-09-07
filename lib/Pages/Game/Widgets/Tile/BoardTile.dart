import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardTiles.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardData.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/EmpetyTile.dart';
import 'package:provider/provider.dart';

class BoardTile extends StatefulWidget {
  const BoardTile(this.position, this.cardData, {Key? key}) : super(key: key);

  final Position position;
  final CardData? cardData;

  @override
  _BoardTileState createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return widget.cardData != null
            ? CardModel(cardData: widget.cardData!)
            : EmpetyTile();
      },
      onWillAccept: (data) {
        return widget.cardData == null;
      },
      onAccept: (CardData cardData) {
        Provider.of<BoardTiles>(context, listen: false)
            .onCardPlay(widget.position, cardData);
        notifyListeners();
      },
    );
  }
}
