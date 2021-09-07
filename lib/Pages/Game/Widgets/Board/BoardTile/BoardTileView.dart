import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardController.dart';
import 'package:pac4/Pages/Game/Widgets/Board/BoardTile/BoardTileModel.dart';
import 'package:pac4/Pages/Game/Util/EmpetyTile.dart';
import 'package:pac4/Pages/Game/Widgets/Hands/Card/GameCardModel.dart';
import 'package:pac4/Pages/Game/Widgets/Hands/Card/GameCardView.dart';
import 'package:provider/provider.dart';

class BoardTile extends StatefulWidget {
  const BoardTile(
    this.model, {
    Key? key,
  }) : super(key: key);

  final BoardTileModel model;

  @override
  _BoardTileState createState() => _BoardTileState();
}

class _BoardTileState extends State<BoardTile> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<Object?> candidateData, rejectedData) {
        return widget.model.cardModel != null
            ? GameCardView(model: widget.model.cardModel!)
            : EmpetyTile();
      },
      onWillAccept: (data) {
        return widget.model.cardModel == null;
      },
      onAccept: (GameCardModel data) {
        final newData = BoardTileModel(widget.model.point, data);
        Provider.of<BoardController>(context, listen: false).onCardPlay(
          newData,
        );
        notifyListeners();
      },
    );
  }
}
