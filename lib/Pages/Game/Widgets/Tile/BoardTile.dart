import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Widgets/Board.dart';
import 'package:pac4/Pages/Game/Widgets/Card/CardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/EmpetyTile.dart';

class BoardTile extends StatefulWidget {
  const BoardTile(Position position, {Key? key}) : super(key: key);

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
        //         Provider.of<EnemyCards>(context, listen: false)
        //     .removeFromEnemyHand(widget.cardData!);
        // notifyListeners();
      },
    );
  }
}
